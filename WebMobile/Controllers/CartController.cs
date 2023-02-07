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
        [HttpGet]
        public ActionResult Add(string MaSanPham, string TenSanPham, int SoLuong, int Gia)
        {
            if (Session["username"] != null)
            {
                string mataikhoan = (string)Session["username"];
                var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == MaSanPham && x.MaTaiKhoan == mataikhoan);
                if (gh != null)
                {
                    gh.SoLuong += SoLuong;
                    gh.TongTien = gh.Gia * gh.SoLuong;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    GioHang ghnew = new GioHang();
                    ghnew.MaTaiKhoan = mataikhoan;
                    ghnew.MaSanPham = MaSanPham;
                    ghnew.TenSanPham = TenSanPham;
                    ghnew.SoLuong = SoLuong;
                    ghnew.Gia = Gia;
                    ghnew.TongTien = Gia*SoLuong;
                    db.GioHang.Add(ghnew);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            return Redirect("/Accout/Login");
        }

        [HttpPost]
        public ActionResult Add(GioHang ghnew)
        {
            if (Session["username"] != null)
            {
                string mataikhoan = (string)Session["username"];
                var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == ghnew.MaSanPham && x.MaTaiKhoan == mataikhoan);
                if (gh != null)
                {
                    gh.SoLuong += ghnew.SoLuong;
                    gh.TongTien = gh.Gia * gh.SoLuong;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    ghnew.MaTaiKhoan = mataikhoan;
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

        [HttpPost]
        public ActionResult Remove(string masp)
        {
            if (Session["username"] != null)
            {
                string mataikhoan = (string)Session["username"];
                var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == masp && x.MaTaiKhoan == mataikhoan);
                if (gh != null)
                {
                    db.GioHang.Remove(gh);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            return Redirect("/Accout/Login");
        }
    }
}