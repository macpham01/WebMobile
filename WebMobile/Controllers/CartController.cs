using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Controllers
{
    public class CartController : Controller
    {
        private WebmobileDB db = new WebmobileDB();
        // GET: Cart
        public ActionResult Index()
        {
            if (Session["username"] != null)
            {
                string mataikhoan = (string)Session["username"];
                var gh = db.GioHang.Where(x => x.MaTaiKhoan == mataikhoan).ToList();
                ViewBag.sum = gh.Sum(x => x.TongTien);
                Session["countItem"] = gh.Count();
                return View(gh);
            }
            return Redirect("/Accout/Login");

        }
        [HttpPost]
        public ActionResult Add(GioHang ghnew)
        {
            if (Session["username"] != null)
            {
                var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == ghnew.MaSanPham && x.MaTaiKhoan == ghnew.MaTaiKhoan);
                if (gh != null)
                {
                    gh.SoLuong = ghnew.SoLuong;
                    gh.TongTien = gh.Gia * gh.SoLuong;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    ghnew.MaTaiKhoan = (string)Session["username"];
                    ghnew.TongTien = ghnew.Gia * ghnew.SoLuong;
                    db.GioHang.Add(ghnew);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            return Redirect("/Accout/Login");
        }

        [HttpPost]
        public ActionResult Update(string masp, int soluong)
        {
            if (Session["username"] != null)
            {
                string mataikhoan = (string)Session["username"];
                var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == masp && x.MaTaiKhoan == mataikhoan);
                if (gh != null)
                {
                    gh.SoLuong = soluong;
                    gh.TongTien = gh.Gia * soluong;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                } 
            }
            return Redirect("/Accout/Login");
        }
    }
}