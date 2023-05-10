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
            if (Session["admin"] != null) { 
                return View(db.NhaSanXuat.Where(x=>x.TinhTrang != "2").ToList()); 
            }
            return Redirect("/Accout/Login");
        }

        // GET: Admin/NhaSanXuats/Details/5
        public ActionResult Details(string id)
        {
            if (Session["admin"] != null)
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
            return Redirect("/Accout/Login");
        }

        // GET: Admin/NhaSanXuats/Create
        public ActionResult Create()
        {
            if (Session["admin"] != null) return View();
            return Redirect("/Accout/Login");

        }

        // POST: Admin/NhaSanXuats/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TenNhaSanXuat,TinhTrang")] NhaSanXuat nhaSanXuat)
        {
            if (ModelState.IsValid)
            {
                string Numrd_str;
                Random rd = new Random();
                Numrd_str = rd.Next(1, 100000000).ToString();
                nhaSanXuat.MaNhaSanXuat = Numrd_str;
                db.NhaSanXuat.Add(nhaSanXuat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nhaSanXuat);
        }

        // GET: Admin/NhaSanXuats/Edit/5
        public ActionResult Edit(string id)
        {
            if (Session["admin"] != null)
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
            return Redirect("/Accout/Login");
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
            if (Session["admin"] != null)
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
            return Redirect("/Accout/Login");
        }

        // POST: Admin/NhaSanXuats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            NhaSanXuat nhaSanXuat = db.NhaSanXuat.Find(id);
            nhaSanXuat.TinhTrang = "2"; // Nhà sản xuất tạm dừng hoạt động
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
