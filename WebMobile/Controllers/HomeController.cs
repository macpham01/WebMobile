using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;
using WebMobile.Models.DTO;
using WebMobile.Models.DTO.PayOnline;

namespace WebMobile.Controllers
{
    public class HomeController : AlertMessage
    {
        private WebmobileDB db = new WebmobileDB();
        public ActionResult Index()
        {
            //Session["admin"] = null;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult test()
        {
            var ncc = db.ChiTietNhapHang.ToList();
            ViewBag.Message = "Your contact page.";

            return View(ncc);
        }

        public ActionResult Payment()
        {
            string email = (string)Session["username"]; 
            string idUser = db.AspNetUsers.FirstOrDefault(x => x.Email==email).Id;
            long? totalMoney = db.HoaDon.OrderByDescending(x=>x.NgayTao).FirstOrDefault(x => x.NguoiDat == idUser).TongTien;
            string url = ConfigurationManager.AppSettings["Url"];
            string returnUrl = ConfigurationManager.AppSettings["ReturnUrl"];
            string tmnCode = ConfigurationManager.AppSettings["TmnCode"];
            string hashSecret = ConfigurationManager.AppSettings["HashSecret"];

            PayLib pay = new PayLib();

            pay.AddRequestData("vnp_Version", "2.1.0"); //Phiên bản api mà merchant kết nối. Phiên bản hiện tại là 2.1.0
            pay.AddRequestData("vnp_Command", "pay"); //Mã API sử dụng, mã cho giao dịch thanh toán là 'pay'
            pay.AddRequestData("vnp_TmnCode", tmnCode); //Mã website của merchant trên hệ thống của VNPAY (khi đăng ký tài khoản sẽ có trong mail VNPAY gửi về)
            pay.AddRequestData("vnp_Amount", $"{totalMoney*100}"); //số tiền cần thanh toán, công thức: số tiền * 100 - ví dụ 10.000 (mười nghìn đồng) --> 1000000
            pay.AddRequestData("vnp_BankCode", ""); //Mã Ngân hàng thanh toán (tham khảo: https://sandbox.vnpayment.vn/apis/danh-sach-ngan-hang/), có thể để trống, người dùng có thể chọn trên cổng thanh toán VNPAY
            pay.AddRequestData("vnp_CreateDate", DateTime.Now.ToString("yyyyMMddHHmmss")); //ngày thanh toán theo định dạng yyyyMMddHHmmss
            pay.AddRequestData("vnp_CurrCode", "VND"); //Đơn vị tiền tệ sử dụng thanh toán. Hiện tại chỉ hỗ trợ VND
            pay.AddRequestData("vnp_IpAddr", Ultil.GetIpAddress()); //Địa chỉ IP của khách hàng thực hiện giao dịch
            pay.AddRequestData("vnp_Locale", "vn"); //Ngôn ngữ giao diện hiển thị - Tiếng Việt (vn), Tiếng Anh (en)
            pay.AddRequestData("vnp_OrderInfo", "Thanh toan don hang"); //Thông tin mô tả nội dung thanh toán
            pay.AddRequestData("vnp_OrderType", "other"); //topup: Nạp tiền điện thoại - billpayment: Thanh toán hóa đơn - fashion: Thời trang - other: Thanh toán trực tuyến
            pay.AddRequestData("vnp_ReturnUrl", returnUrl); //URL thông báo kết quả giao dịch khi Khách hàng kết thúc thanh toán
            pay.AddRequestData("vnp_TxnRef", DateTime.Now.Ticks.ToString()); //mã hóa đơn

            string paymentUrl = pay.CreateRequestUrl(url, hashSecret);

            return Redirect(paymentUrl);
        }

        public ActionResult PaymentConfirm()
        {
            if (Request.QueryString.Count > 0)
            {
                string hashSecret = ConfigurationManager.AppSettings["HashSecret"]; //Chuỗi bí mật
                var vnpayData = Request.QueryString;
                PayLib pay = new PayLib();

                //lấy toàn bộ dữ liệu được trả về
                foreach (string s in vnpayData)
                {
                    if (!string.IsNullOrEmpty(s) && s.StartsWith("vnp_"))
                    {
                        pay.AddResponseData(s, vnpayData[s]);
                    }
                }

                long orderId = Convert.ToInt64(pay.GetResponseData("vnp_TxnRef")); //mã hóa đơn
                long vnpayTranId = Convert.ToInt64(pay.GetResponseData("vnp_TransactionNo")); //mã giao dịch tại hệ thống VNPAY
                string vnp_ResponseCode = pay.GetResponseData("vnp_ResponseCode"); //response code: 00 - thành công, khác 00 - xem thêm https://sandbox.vnpayment.vn/apis/docs/bang-ma-loi/
                string vnp_SecureHash = Request.QueryString["vnp_SecureHash"]; //hash của dữ liệu trả về

                bool checkSignature = pay.ValidateSignature(vnp_SecureHash, hashSecret); //check chữ ký đúng hay không?

                if (checkSignature)
                {
                    if (vnp_ResponseCode == "00")
                    {
                        // Thanh toán thành công
                        string email = (string)Session["username"];
                        string idUser = db.AspNetUsers.FirstOrDefault(x => x.Email==email).Id;
                        var order = db.HoaDon.OrderByDescending(x => x.NgayTao).FirstOrDefault(x => x.NguoiDat == idUser);
                        order.TinhTrang = "Đã thanh toán";
                        db.SaveChanges();
                        SetAlert("Đặt hàng thành công", 1);
                        return RedirectToAction("OrderHistory", "Order");
                    }
                    else
                    {
                        //Thanh toán không thành công. Mã lỗi: vnp_ResponseCode
                        DeleteOrderDetailAndOrder();
                        return RedirectToAction("OrderHistory", "Order", new { error = "Thanh toán đơn hàng không thành công."});
                    }
                }
                else
                {
                    DeleteOrderDetailAndOrder();
                    return RedirectToAction("OrderHistory", "Order", new { error = "Có lỗi xảy ra trong quá trình xử lý." });
                }
            }

            return View();
        }

        /// <summary>
        /// Xoá các sản phẩm trong bảng chi tiết sản phẩm và đơn hàng khi gặp lỗi
        /// </summary>
        public void DeleteOrderDetailAndOrder()
        {
            string email = (string)Session["username"];
            string idUser = db.AspNetUsers.FirstOrDefault(x => x.Email == email).Id;
            var order = db.HoaDon.OrderByDescending(x => x.NgayTao).FirstOrDefault(x => x.NguoiDat == idUser);
            var orderDetails = db.ChiTietHoaDon.Where(x => x.OrderID == order.ID).ToList();
            foreach (var item in orderDetails)
            {
                // Cộng lại số lượng sản phẩm
                var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == item.MaSanPham);
                sp.SoLuongDaBan += item.SoLuong;
                db.ChiTietHoaDon.Remove(item);
            }
            db.HoaDon.Remove(order);
            db.SaveChanges();
        }
    }
}