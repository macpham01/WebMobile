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
                    db.GioHang.Remove(item);
                    db.SaveChanges();
                }
                Session["countItem"] = 0;
                return RedirectToAction("ThankYou");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return Redirect("/Home");

            }
            
        }

        public ActionResult ThankYou()
        {
            return View();
        }
    }
}