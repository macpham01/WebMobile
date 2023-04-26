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
                //kiểm tra xem số lượng có đủ để bán không
                string mataikhoan = (string)Session["username"];
                var gioHangs = db.GioHang.Where(x=>x.MaTaiKhoan == mataikhoan);
                foreach (var gh in gioHangs)
                {
                    var sp = db.SanPham.FirstOrDefault(x=>x.MaSanPham==gh.MaSanPham);
                    if (sp!= null)
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
                orderNew.NguoiDat = nguoidat.Id; //Lấy id thay cho Email (vì trong CSDL đang bị ràng buộc khoá, đáng ra chỗ này phải là email thì hợp lý hơn)
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

                    // Chuyển sản phẩm từ bảng giỏ hàng sang bảng chi tiết hoá đơn 
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
                    var order = db.HoaDon.FirstOrDefault(x => x.ID == orderID);
                    var status = order.TrangThai;
                    // Kiểm tra xem sản phẩm đã được giao hay chưa
                    if (status == "Chưa giao hàng")
                    {
                        var orderDetails = db.ChiTietHoaDon.Where(x => x.OrderID == orderID).ToList();
                        foreach (var item in orderDetails)
                        {
                            var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == item.MaSanPham);
                            sp.SoLuongDaBan += item.SoLuong;
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