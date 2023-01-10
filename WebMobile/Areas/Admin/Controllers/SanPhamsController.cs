using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;
using PagedList;

namespace WebMobile.Areas.Admin.Controllers
{
    public class SanPhamsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/SanPhams
        public ActionResult Index(int? page, string search)
        {
            if (Session["admin"] != null)
            {
                var products = db.SanPham.Select(x => x);

                if (search != null)
                {
                    ViewBag.Search = search;
                    products = products.Where(x => x.TenSanPham.Contains(search));
                }
                products = products.OrderBy(x => x.TenSanPham);
                int pageSize = 5;
                int pageNumber = (page ?? 1);
                return View(products.ToPagedList(pageNumber, pageSize));
            }
            return Redirect("/Accout/Login");

        }

        // GET: Admin/SanPhams/Details/5
        public ActionResult Details(string id)
        {
            if (Session["admin"] != null)
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                SanPham sanPham = db.SanPham.Find(id);
                if (sanPham == null)
                {
                    return HttpNotFound();
                }
                return View(sanPham);
            }
            return Redirect("/Accout/Login");

        }

        // GET: Admin/SanPhams/Create
        public ActionResult Create()
        {
            if (Session["admin"] != null)
            {
                ViewBag.MaLoaiSanPham = new SelectList(db.LoaiSanPham, "MaLoaiSanPham", "TenLoaiSanPham");
                ViewBag.MaNhaSanXuat = new SelectList(db.NhaSanXuat, "MaNhaSanXuat", "TenNhaSanXuat");
                return View();
            }

            return Redirect("/Accout/Login");
        }

        // POST: Admin/SanPhams/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "MaSanPham,MaLoaiSanPham,MaNhaSanXuat,TenSanPham,CauHinh,Image,Gia,SoLuongDaBan,LuotView,TinhTrang,GhiChu")] SanPham sanPham, HttpPostedFileBase Image)
        {
            if (ModelState.IsValid)
            {
                if (Image.FileName != null)
                {
                    string fileName = sanPham.MaSanPham.ToString();
                    string fullPathWithFileName = "~/Public/images/" + fileName + ".png";
                    Image.SaveAs(Server.MapPath(fullPathWithFileName));
                    sanPham.Image = fileName + ".png";
                }
                db.SanPham.Add(sanPham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaLoaiSanPham = new SelectList(db.LoaiSanPham, "MaLoaiSanPham", "TenLoaiSanPham", sanPham.MaLoaiSanPham);
            ViewBag.MaNhaSanXuat = new SelectList(db.NhaSanXuat, "MaNhaSanXuat", "TenNhaSanXuat", sanPham.MaNhaSanXuat);
            return View(sanPham);
        }

        // GET: Admin/SanPhams/Edit/5
        public ActionResult Edit(string id)
        {
            if (Session["admin"] != null)
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                SanPham sanPham = db.SanPham.Find(id);
                if (sanPham == null)
                {
                    return HttpNotFound();
                }
                ViewBag.MaLoaiSanPham = new SelectList(db.LoaiSanPham, "MaLoaiSanPham", "TenLoaiSanPham", sanPham.MaLoaiSanPham);
                ViewBag.MaNhaSanXuat = new SelectList(db.NhaSanXuat, "MaNhaSanXuat", "TenNhaSanXuat", sanPham.MaNhaSanXuat);
                return View(sanPham);
            }
            return Redirect("/Accout/Login");

        }

        // POST: Admin/SanPhams/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "MaSanPham,MaLoaiSanPham,MaNhaSanXuat,TenSanPham,CauHinh,Image,Gia,SoLuongDaBan,LuotView,TinhTrang,GhiChu")] SanPham sanPham, HttpPostedFileBase image)
        {
            if (ModelState.IsValid)
            {
                if (image == null)
                {                 
                    db.Entry(sanPham).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                string fileName = sanPham.MaSanPham.ToString();
                string fullPathWithFileName = "~/Public/images/" + fileName + ".png";
                image.SaveAs(Server.MapPath(fullPathWithFileName));
                sanPham.Image = fileName + ".png";
                db.Entry(sanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaLoaiSanPham = new SelectList(db.LoaiSanPham, "MaLoaiSanPham", "TenLoaiSanPham", sanPham.MaLoaiSanPham);
            ViewBag.MaNhaSanXuat = new SelectList(db.NhaSanXuat, "MaNhaSanXuat", "TenNhaSanXuat", sanPham.MaNhaSanXuat);
            return View(sanPham);
        }

        // GET: Admin/SanPhams/Delete/5
        public ActionResult Delete(string id)
        {
            if (Session["admin"] != null)
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                SanPham sanPham = db.SanPham.Find(id);
                if (sanPham == null)
                {
                    return HttpNotFound();
                }
                return View(sanPham);
            }

            return Redirect("/Accout/Login");
        }

        // POST: Admin/SanPhams/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            SanPham sanPham = db.SanPham.Find(id);
            db.SanPham.Remove(sanPham);
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
