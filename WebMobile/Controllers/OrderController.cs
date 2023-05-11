using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;
using WebMobile.Models.DTO;

namespace WebMobile.Controllers
{
    public class OrderController : AlertMessage
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Order
        public ActionResult CheckOut()
        {
            try
            {
                if (Session["username"] != null)
                {
                    //kiểm tra xem số lượng có đủ để bán không
                    string mataikhoan = (string)Session["username"];
                    var gioHangs = db.GioHang.Where(x => x.MaTaiKhoan == mataikhoan);
                    foreach (var gh in gioHangs)
                    {
                        var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == gh.MaSanPham);
                        if (sp != null)
                        {
                            if (sp.SoLuongDaBan < gh.SoLuong)
                            {
                                return RedirectToAction("Details", "Products", new { masp = sp.MaSanPham, errorQuantity = "Số lượng bán không đủ" });
                            }
                        }
                    }

                    return View();
                }
                return Redirect("/Accout/Login");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Session["countItem"] = 0;
                return Redirect("/Home");
            }


        }

        [HttpPost]
        public ActionResult Add(HoaDon orderNew)
        {
            try
            {
                string mataikhoan = (string)Session["username"];
                var gh = db.GioHang.Where(x => x.MaTaiKhoan == mataikhoan).ToList();
                var nguoidat = db.AspNetUsers.FirstOrDefault(x=>x.UserName == mataikhoan);
                var product = db.SanPham.ToList();
                //Random rd = new Random();
                //long orderID = rd.Next(1, 10000000);

                // Chuyển sản phẩm từ bảng giỏ hàng sang bảng chi tiết hoá đơn 
                foreach (var item in gh)
                {
                    //Trừ đi số lượng tương ứng của sản phẩm khi thanh toán
                    var productSelect = product.FirstOrDefault(x => x.MaSanPham == item.MaSanPham);
                    productSelect.SoLuongDaBan -= item.SoLuong;

                    var orderDetail = new ChiTietHoaDon();
                    orderDetail.MaSanPham = item.MaSanPham;
                    //orderDetail.OrderID = orderID;
                    orderDetail.TenSanPham = item.TenSanPham;
                    orderDetail.SoLuong = item.SoLuong;
                    orderDetail.Gia = item.Gia;
                    orderDetail.TongTien = item.TongTien;
                    db.ChiTietHoaDon.Add(orderDetail);
                    
                    //Xoá từng bản ghi trong bảng giỏ hàng (dữ liệu đã được copy sang bảng chi tiết hoá đơn)
                    db.GioHang.Remove(item);
                }

                // Tạo một hoá đơn mới
                //orderNew.ID = orderID;
                orderNew.NguoiDat = nguoidat.Id; //Lấy id thay cho Email (vì trong CSDL đang bị ràng buộc khoá, đáng ra chỗ này phải là email thì hợp lý hơn)
                orderNew.TongTien = gh.Sum(x => x.TongTien);
                orderNew.TrangThai = "Chưa giao hàng";
                orderNew.TinhTrang = "Chưa thanh toán";
                orderNew.NgayTao = DateTime.Now;
                db.HoaDon.Add(orderNew);
                db.SaveChanges();

                //Hiện thị số lượng item trong giỏ hàng
                Session["countItem"] = 0;

                if (orderNew.HinhThucThanhToan == "Chuyển khoản")
                {
                    return RedirectToAction("Payment", "Home");
                }
                SetAlert("Đặt hàng thành công", 1);
                return RedirectToAction("OrderHistory");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return Redirect("/Home");
            }
            
        }

        public ActionResult OrderDetail(int orderID)
        {
            if (Session["username"] != null)
            {
                var orderDetails = db.ChiTietHoaDon.Where(x => x.OrderID == orderID);

                ViewBag.sum = orderDetails.Sum(x => x.TongTien);
               
                return View(orderDetails);
            }
            return Redirect("/Accout/Login");
        }

        public ActionResult OrderHistory(string error)
        {
            if (Session["username"] != null)
            {
                string email = (string)Session["username"];
                // Lấy id thay cho Email (tại vì trong db đang bị ràng buộc dữ liệu)
                var id = db.AspNetUsers.FirstOrDefault(x=>x.Email == email).Id;
                var orders = db.HoaDon.Where(x => x.NguoiDat == id).OrderByDescending(x=>x.NgayTao).ToList();
                if (error != null) ViewBag.error = error;
                return View(orders);
            }
            return Redirect("/Accout/Login");
        }

        public ActionResult OrderDelete(int orderID)
        {
            try
            {
                if (Session["username"] != null)
                {
                    string email = (string)Session["username"]; // giả sử email cũng như id là khoá chính
                    string id = db.AspNetUsers.FirstOrDefault(x=>x.Email == email).Id;
                    var order = db.HoaDon.FirstOrDefault(x => x.ID == orderID && x.NguoiDat==id);
                    var status = order.TrangThai;
                    // Kiểm tra xem sản phẩm đã được giao hay chưa
                    if (status == "Chưa giao hàng")
                    {
                        var orderDetails = db.ChiTietHoaDon.Where(x => x.OrderID == orderID).ToList();
                        foreach (var item in orderDetails)
                        {
                            var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == item.MaSanPham);
                            sp.SoLuongDaBan += item.SoLuong;
                            db.ChiTietHoaDon.Remove(item);
                        }
                        db.HoaDon.Remove(order);
                        db.SaveChanges();
                        return RedirectToAction("OrderHistory");
                    }
                    else return RedirectToAction("OrderHistory", new {error = "Bạn không thể huỷ đơn hàng vì đơn hàng đang được giao." });
                    
                }
                return Redirect("/Accout/Login");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return RedirectToAction("OrderHistory", new { error = "Bạn không thể huỷ đơn hàng này." });
            }
           
        }
    }
}