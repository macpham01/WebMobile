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
        public ActionResult Index()
        {
            return View(db.ChiTietNhapHang.ToList());
        }

        // GET: Admin/ChiTietNhapHangs/Details/5
        public ActionResult Details(string id)
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

        // GET: Admin/ChiTietNhapHangs/Create
        public ActionResult Create()
        {
            ViewBag.MaSanPham = new SelectList(db.SanPham, "MaSanPham", "TenSanPham");
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
                db.ChiTietNhapHang.Add(chiTietNhapHang);
                db.SaveChanges();
                return RedirectToAction("Index");
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

        // POST: Admin/ChiTietNhapHangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            ChiTietNhapHang chiTietNhapHang = db.ChiTietNhapHang.Find(id);
            db.ChiTietNhapHang.Remove(chiTietNhapHang);
            db.SaveChanges();
            return RedirectToAction("Index");
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
