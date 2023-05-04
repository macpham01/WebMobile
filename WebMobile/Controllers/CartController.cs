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
                if (gh.Count == 0)
                {
                    Session["countItem"] = 0;
                    return Redirect("/Home");
                }
                ViewBag.sum = gh.Sum(x => x.TongTien);
                Session["countItem"] = gh.Count();
                return View(gh);
            }
            return Redirect("/Accout/Login");

        }
        [HttpGet]
        public ActionResult Add(string MaSanPham, string TenSanPham, int SoLuong, int Gia)
        {
            try {
                if (Session["username"] != null)
                {
                    string mataikhoan = (string)Session["username"];
                    var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == MaSanPham && x.MaTaiKhoan == mataikhoan);
                    if (gh != null)
                    {
                        gh.SoLuong += SoLuong;
                        gh.TongTien = gh.Gia * gh.SoLuong;

                        //Kiểm tra xem số lượng sau khi update có đủ để bán không
                        var productSelected = db.SanPham.Where(x => x.MaSanPham == MaSanPham).Select(x => x.SoLuongDaBan).FirstOrDefault();
                        int productSelectedInt = Convert.ToInt32(productSelected);
                        if (gh.SoLuong > productSelectedInt)
                        {
                            return RedirectToAction("Details", "Products", new { masp = MaSanPham, errorQuantity = "Số lượng bán không đủ" });
                        }
                        //Trừ đi số lượng sản phẩm có mã sản phẩm khi được thêm vào giỏ hàng
                        //var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == MaSanPham);
                        //sp.SoLuongDaBan -= SoLuong;
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        //kiểm tra xem số lượng có đủ để bán không
                        var productSelected = db.SanPham.Where(x => x.MaSanPham == MaSanPham).Select(x => x.SoLuongDaBan).FirstOrDefault();
                        int productSelectedInt = Convert.ToInt32(productSelected);
                        if (SoLuong > productSelectedInt)
                        {
                            return RedirectToAction("Details", "Products", new { masp = MaSanPham, errorQuantity = "Số lượng bán không đủ" });
                        }

                        GioHang ghnew = new GioHang();
                        ghnew.MaTaiKhoan = mataikhoan;
                        ghnew.MaSanPham = MaSanPham;
                        ghnew.TenSanPham = TenSanPham;
                        ghnew.SoLuong = SoLuong;
                        ghnew.Gia = Gia;
                        ghnew.TongTien = Gia * SoLuong;
                        db.GioHang.Add(ghnew);

                        //Trừ đi số lượng sản phẩm có mã sản phẩm khi được thêm vào giỏ hàng
                        //var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == MaSanPham);
                        //sp.SoLuongDaBan -= SoLuong;
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                }
                return Redirect("/Accout/Login");
            }
            catch (Exception err)
            {
                Console.WriteLine("{0} Exception caught.", err);
                return Redirect("/Accout/Login");
            }
            
        }

        [HttpPost]
        public ActionResult Add(GioHang ghnew)
        {
            try
            {
                if (Session["username"] != null)
                {
                    string mataikhoan = (string)Session["username"];
                    var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == ghnew.MaSanPham && x.MaTaiKhoan == mataikhoan);
                    if (gh != null)
                    {
                        gh.SoLuong += ghnew.SoLuong;
                        gh.TongTien = gh.Gia * gh.SoLuong;

                        //Kiểm tra xem số lượng sau khi update có đủ để bán không
                        var productSelected = db.SanPham.Where(x => x.MaSanPham == ghnew.MaSanPham).Select(x => x.SoLuongDaBan).FirstOrDefault();
                        int productSelectedInt = Convert.ToInt32(productSelected);
                        if (gh.SoLuong > productSelectedInt)
                        {
                            return RedirectToAction("Details", "Products", new { masp = ghnew.MaSanPham, errorQuantity = "Số lượng bán không đủ" });
                        }

                        //Trừ đi số lượng sản phẩm có mã sản phẩm khi được thêm vào giỏ hàng
                        //var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == ghnew.MaSanPham);
                        //sp.SoLuongDaBan -= ghnew.SoLuong;
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        //kiểm tra xem số lượng có đủ để bán không
                        var productSelected =db.SanPham.Where(x => x.MaSanPham == ghnew.MaSanPham).Select(x => x.SoLuongDaBan).FirstOrDefault();
                        int productSelectedInt = Convert.ToInt32(productSelected);
                        if (ghnew.SoLuong> productSelectedInt)
                        {
                            return RedirectToAction("Details", "Products", new { masp = ghnew.MaSanPham, errorQuantity= "Số lượng bán không đủ" });
                        }

                        ghnew.MaTaiKhoan = mataikhoan;
                        ghnew.TongTien = ghnew.Gia * ghnew.SoLuong;
                        db.GioHang.Add(ghnew);

                        //Trừ đi số lượng sản phẩm có mã sản phẩm khi được thêm vào giỏ hàng
                        //var sp = db.SanPham.FirstOrDefault(x => x.MaSanPham == ghnew.MaSanPham);
                        //sp.SoLuongDaBan -= ghnew.SoLuong;
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                }
                return Redirect("/Accout/Login");
            }
          
            catch (Exception err)
            {
                Console.WriteLine("{0} Exception caught.", err);
                return Redirect("/Accout/Login");
            }
        }

        [HttpPost]
        public ActionResult Update(string masp, int soluong)
        {
            try
            {
                if (Session["username"] != null)
                {
                    string mataikhoan = (string)Session["username"];
                    var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == masp && x.MaTaiKhoan == mataikhoan);
                    if (gh != null)
                    {
                        gh.SoLuong = soluong;
                        gh.TongTien = gh.Gia * soluong;

                        //kiểm tra xem số lượng có đủ để bán không
                        var productSelected = db.SanPham.Where(x => x.MaSanPham == masp).Select(x => x.SoLuongDaBan).FirstOrDefault();
                        int productSelectedInt = Convert.ToInt32(productSelected);
                        if (soluong > productSelectedInt)
                        {
                            return RedirectToAction("Details", "Products", new { masp = masp, errorQuantity = "Số lượng bán không đủ" });
                        }
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                }
                return Redirect("/Accout/Login");
            }
            
             catch (Exception err)
            {
                Console.WriteLine("{0} Exception caught.", err);
                return Redirect("/Accout/Login");
            }
        }

        [HttpPost]
        public ActionResult Remove(string masp)
        {
            try
            {
                if (Session["username"] != null)
                {
                    string mataikhoan = (string)Session["username"];
                    var gh = db.GioHang.FirstOrDefault(x => x.MaSanPham == masp && x.MaTaiKhoan == mataikhoan);
                    if (gh != null)
                    {
                        db.GioHang.Remove(gh);
                        db.SaveChanges();
                        var ghnew = db.GioHang.Where(x => x.MaTaiKhoan == mataikhoan).ToList();
                        Session["countItem"] = ghnew.Count();
                        return RedirectToAction("Index");
                    }
                }
                return Redirect("/Accout/Login");
            }
            
             catch (Exception err)
            {
                Console.WriteLine("{0} Exception caught.", err);
                return Redirect("/Accout/Login");
            }
        }

        public ActionResult CheckOut()
        {
            return View();
        }
    }
}