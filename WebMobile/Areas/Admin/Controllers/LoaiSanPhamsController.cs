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
    public class LoaiSanPhamsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/LoaiSanPhams
        public ActionResult Index()
        {
            if (Session["admin"] != null) return View(db.LoaiSanPham.Where(x=>x.TinhTrang != "2").ToList());
            return Redirect("/Accout/Login");
        }

        // GET: Admin/LoaiSanPhams/Details/5
        public ActionResult Details(string id)
        {
            if (Session["admin"] != null)
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                LoaiSanPham loaiSanPham = db.LoaiSanPham.Find(id);
                if (loaiSanPham == null)
                {
                    return HttpNotFound();
                }
                return View(loaiSanPham);
            }
            return Redirect("/Accout/Login");
        }

        // GET: Admin/LoaiSanPhams/Create
        public ActionResult Create()
        {
            if (Session["admin"] != null) return View();
            return Redirect("/Accout/Login");
        }

        // POST: Admin/LoaiSanPhams/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TenLoaiSanPham,TinhTrang")] LoaiSanPham loaiSanPham)
        {
            if (ModelState.IsValid)
            {
                string Numrd_str;
                Random rd = new Random();
                Numrd_str = rd.Next(1, 100000000).ToString();
                loaiSanPham.MaLoaiSanPham = Numrd_str;
                db.LoaiSanPham.Add(loaiSanPham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(loaiSanPham);
        }

        // GET: Admin/LoaiSanPhams/Edit/5
        public ActionResult Edit(string id)
        {
            if (Session["admin"] != null)
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                LoaiSanPham loaiSanPham = db.LoaiSanPham.Find(id);
                if (loaiSanPham == null)
                {
                    return HttpNotFound();
                }
                return View(loaiSanPham);
            }
            return Redirect("/Accout/Login");
        }

        // POST: Admin/LoaiSanPhams/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaLoaiSanPham,TenLoaiSanPham,TinhTrang")] LoaiSanPham loaiSanPham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(loaiSanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(loaiSanPham);
        }

        // GET: Admin/LoaiSanPhams/Delete/5
        public ActionResult Delete(string id)
        {
            if (Session["admin"] != null)
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                LoaiSanPham loaiSanPham = db.LoaiSanPham.Find(id);
                if (loaiSanPham == null)
                {
                    return HttpNotFound();
                }
                return View(loaiSanPham);
            }
            return Redirect("/Accout/Login");
        }

        // POST: Admin/LoaiSanPhams/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            LoaiSanPham loaiSanPham = db.LoaiSanPham.Find(id);
            loaiSanPham.TinhTrang = "2"; // Loại sản phẩm tạm dừng hoạt động
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
