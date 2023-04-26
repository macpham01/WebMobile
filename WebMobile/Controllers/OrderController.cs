using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Controllers
{
    public class OrderController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Order
        public ActionResult Index()
        {
            if (Session["username"] != null)
            {
                return View();
            }
            return Redirect("/Accout/Login");
           
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

                Random rd = new Random();
                orderNew.ID = rd.Next(1, 10000);
                orderNew.NguoiDat = nguoidat.Id; //Lấy id thay cho Email (vì trong CSDL đang bị ràng buộc khoá)
                orderNew.TongTien = gh.Sum(x => x.TongTien);
                orderNew.TrangThai = "Chưa giao hàng";
                
                orderNew.NgayTao = DateTime.Now;

                db.HoaDon.Add(orderNew);
                db.SaveChanges();

               

                foreach (var item in gh)
                {
                    //Trừ đi số lượng tương ứng của sản phẩm khi thanh toán
                    var productSelect = product.FirstOrDefault(x => x.MaSanPham == item.MaSanPham);
                    productSelect.SoLuongDaBan -= item.SoLuong;

                    //Khai báo thông tin của một đối tượng thuộc bảng chi tiết hoá đơn 
                    var orderDetail = new ChiTietHoaDon();
                    orderDetail.MaSanPham = item.MaSanPham;
                    orderDetail.OrderID = orderNew.ID;
                    orderDetail.TenSanPham = item.TenSanPham;
                    orderDetail.SoLuong = item.SoLuong;
                    orderDetail.Gia = item.Gia;
                    orderDetail.TongTien = item.TongTien;

                    //Thêm dữ liệu vào bảng chi tiết hoá đơn 
                    db.ChiTietHoaDon.Add(orderDetail);
                    
                    //Xoá từng bản ghi trong bảng giỏ hàng (dữ liệu đã được copy sang bảng chi tiết hoá đơn)
                    db.GioHang.Remove(item);
                }
                    db.SaveChanges();

                //Hiện thị số lượng item trong giỏ hàng
                Session["countItem"] = 0;

                //Hiện thanh nav Chi tiết đơn hàng
                Session["buyProduct"] = orderNew.ID;
                return RedirectToAction("ThankYou", new {orderID = orderNew.ID});
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return Redirect("/Home");

            }
            
        }

        public ActionResult ThankYou(int orderID)
        {
            if (Session["username"] != null)
            {
                
                var orderDetails = db.ChiTietHoaDon.Where(x => x.OrderID == orderID);

                ViewBag.sum = orderDetails.Sum(x => x.TongTien);
               
                return View(orderDetails);
            }
            return Redirect("/Accout/Login");
        }
    }
}