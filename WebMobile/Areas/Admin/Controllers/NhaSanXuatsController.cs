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
    public class NhaSanXuatsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/NhaSanXuats
        public ActionResult Index()
        {
            return View(db.NhaSanXuat.ToList());
        }

        // GET: Admin/NhaSanXuats/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhaSanXuat nhaSanXuat = db.NhaSanXuat.Find(id);
            if (nhaSanXuat == null)
            {
                return HttpNotFound();
            }
            return View(nhaSanXuat);
        }

        // GET: Admin/NhaSanXuats/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/NhaSanXuats/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaNhaSanXuat,TenNhaSanXuat,TinhTrang")] NhaSanXuat nhaSanXuat)
        {
            if (ModelState.IsValid)
            {
                db.NhaSanXuat.Add(nhaSanXuat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nhaSanXuat);
        }

        // GET: Admin/NhaSanXuats/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhaSanXuat nhaSanXuat = db.NhaSanXuat.Find(id);
            if (nhaSanXuat == null)
            {
                return HttpNotFound();
            }
            return View(nhaSanXuat);
        }

        // POST: Admin/NhaSanXuats/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaNhaSanXuat,TenNhaSanXuat,TinhTrang")] NhaSanXuat nhaSanXuat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nhaSanXuat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nhaSanXuat);
        }

        // GET: Admin/NhaSanXuats/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhaSanXuat nhaSanXuat = db.NhaSanXuat.Find(id);
            if (nhaSanXuat == null)
            {
                return HttpNotFound();
            }
            return View(nhaSanXuat);
        }

        // POST: Admin/NhaSanXuats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            NhaSanXuat nhaSanXuat = db.NhaSanXuat.Find(id);
            db.NhaSanXuat.Remove(nhaSanXuat);
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
