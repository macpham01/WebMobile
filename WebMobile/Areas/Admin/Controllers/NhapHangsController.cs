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
    public class NhapHangsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/NhapHangs
        public ActionResult Index()
        {
            var nhapHang = db.NhapHang.Join(db.NhaCungCap, nh=>nh.MaNhaCungCap, ncc=>ncc.MaNhaCungCap, (nh, ncc) => new{
            NgayNhap=  nh.NgayNhap,SoLuongNhap= nh.SoLuongNhap,MaNhapHang= nh.MaNhapHang,TongTienNhap = nh.TongTienNhap,TenNhaCungCap = ncc.TenNhaCungCap, Email = nh.Email
            }).ToList().Select(nh => new NhapHang { NgayNhap = nh.NgayNhap, SoLuongNhap = nh.SoLuongNhap, MaNhapHang = nh.MaNhapHang, TongTienNhap = nh.TongTienNhap, TenNhaCungCap = nh.TenNhaCungCap, Email=nh.Email }); ;
            return View(nhapHang);
        }

        // GET: Admin/NhapHangs/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhapHang nhapHang = db.NhapHang.Find(id);
            if (nhapHang == null)
            {
                return HttpNotFound();
            }
            return View(nhapHang);
        }

        // GET: Admin/NhapHangs/Create
        public ActionResult Create()
        {
            return RedirectToAction("Create", "ChiTietNhapHangs");
        }

        

        // GET: Admin/NhapHangs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhapHang nhapHang = db.NhapHang.Find(id);
            if (nhapHang == null)
            {
                return HttpNotFound();
            }
            return View(nhapHang);
        }

        // POST: Admin/NhapHangs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaNhapHang,NgayNhap,SoLuongNhap,TongTienNhap,Email,MaNhaCungCap")] NhapHang nhapHang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nhapHang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nhapHang);
        }

        // GET: Admin/NhapHangs/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhapHang nhapHang = db.NhapHang.Find(id);
            if (nhapHang == null)
            {
                return HttpNotFound();
            }
            return View(nhapHang);
        }

        // POST: Admin/NhapHangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            NhapHang nhapHang = db.NhapHang.Find(id);
            db.NhapHang.Remove(nhapHang);
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
