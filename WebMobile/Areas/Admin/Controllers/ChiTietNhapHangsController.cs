using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Areas.Admin.Controllers
{
    public class ChiTietNhapHangsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/ChiTietNhapHangs
        public ActionResult Index(string maNhapHang)
        {
            return View(db.ChiTietNhapHang.Where(x=>x.MaNhapHang== maNhapHang).ToList());
        }

        //// GET: Admin/ChiTietNhapHangs/Details/5
        //public ActionResult Details(string id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    ChiTietNhapHang chiTietNhapHang = db.ChiTietNhapHang.Find(id);
        //    if (chiTietNhapHang == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(chiTietNhapHang);
        //}

        // GET: Admin/ChiTietNhapHangs/Create
        public ActionResult Create()
        {
            string maTaiKhoan = (string)Session["admin"];
            ViewBag.gioHang = db.GioHang.Where(x => x.MaTaiKhoan == maTaiKhoan).Join(db.SanPham, gh=>gh.MaSanPham
            , sp=>sp.MaSanPham, (gh, sp)=> new {masp = gh.MaSanPham,tensp = sp.TenSanPham, soluong = gh.SoLuong, gia = gh.Gia, thanhtien = gh.TongTien}).ToList().Select(x=>new GioHang
            {
                MaSanPham = x.masp,
                TenSanPham = x.tensp,
                SoLuong = x.soluong,
                Gia = x.gia,
                TongTien =x.thanhtien
            }).ToList();
            ViewBag.MaSanPham = new SelectList(db.SanPham, "MaSanPham", "TenSanPham");
            ViewBag.MaNhaCungCap = db.NhaCungCap.ToList();
            return View();
        }

        // POST: Admin/ChiTietNhapHangs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaNhapHang,MaSanPham,TenSanPham,SoLuongNhap,GiaNhap,ThanhTien")] ChiTietNhapHang chiTietNhapHang)
        {
            if (ModelState.IsValid)
            {
                string mataikhoan = (string)Session["admin"];

                // kiểm tra xem sản phẩm đã có trong giỏ hàng hay chưa
                var gh = db.GioHang.FirstOrDefault(x=>x.MaTaiKhoan==mataikhoan&&x.MaSanPham==chiTietNhapHang.MaSanPham);
                if (gh != null)
                {
                    gh.SoLuong += chiTietNhapHang.SoLuongNhap;
                    gh.Gia = chiTietNhapHang.GiaNhap;
                    gh.TongTien = gh.SoLuong * gh.Gia;
                    db.SaveChanges();
                }
                else
                {
                    var ghNew = new GioHang();
                    ghNew.MaTaiKhoan = mataikhoan;
                    ghNew.MaSanPham = chiTietNhapHang.MaSanPham;
                    ghNew.TenSanPham = db.SanPham.FirstOrDefault(x => x.MaSanPham == chiTietNhapHang.MaSanPham).TenSanPham;
                    ghNew.SoLuong = chiTietNhapHang.SoLuongNhap;
                    ghNew.Gia = chiTietNhapHang.GiaNhap;
                    ghNew.TongTien = chiTietNhapHang.SoLuongNhap * chiTietNhapHang.GiaNhap;
                    db.GioHang.Add(ghNew);
                    db.SaveChanges();
                }
                return RedirectToAction("Create");
            }
            return RedirectToAction("Index", "NhapHangs");


        }

        // GET: Admin/ChiTietNhapHangs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietNhapHang chiTietNhapHang = db.ChiTietNhapHang.Find(id);
            if (chiTietNhapHang == null)
            {
                return HttpNotFound();
            }
            return View(chiTietNhapHang);
        }

        // POST: Admin/ChiTietNhapHangs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaNhapHang,MaSanPham,TenSanPham,SoLuongNhap,GiaNhap,ThanhTien")] ChiTietNhapHang chiTietNhapHang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chiTietNhapHang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(chiTietNhapHang);
        }

        // GET: Admin/ChiTietNhapHangs/Delete/5
        public ActionResult Delete(string id)
        {
            GioHang gh = db.GioHang.FirstOrDefault(x=>x.MaSanPham==id);
            db.GioHang.Remove(gh);
            db.SaveChanges();
            return RedirectToAction("Create");
        }

        

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
