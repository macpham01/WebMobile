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
            if (Session["admin"] != null)
            {
                var nhapHang = db.NhapHang.Join(db.NhaCungCap, nh => nh.MaNhaCungCap, ncc => ncc.MaNhaCungCap, (nh, ncc) => new
                {
                    NgayNhap = nh.NgayNhap,
                    SoLuongNhap = nh.SoLuongNhap,
                    MaNhapHang = nh.MaNhapHang,
                    TongTienNhap = nh.TongTienNhap,
                    TenNhaCungCap = ncc.TenNhaCungCap,
                    Email = nh.Email
                }).ToList().Select(nh => new NhapHang { NgayNhap = nh.NgayNhap, SoLuongNhap = nh.SoLuongNhap, MaNhapHang = nh.MaNhapHang, TongTienNhap = nh.TongTienNhap, TenNhaCungCap = nh.TenNhaCungCap, Email = nh.Email }); ;
                return View(nhapHang);
            }
            return Redirect("/Accout/Login");
        }

        

        // GET: Admin/NhapHangs/Create
        public ActionResult Create(string maNCC)
        {
            if (Session["admin"] != null)
            {
                var maTaiKhoan = (string)Session["admin"];
                var gioHangs = db.GioHang.Where(x => x.MaTaiKhoan == maTaiKhoan);
                Random rd = new Random();
                var nhapHangMoi = new NhapHang();
                nhapHangMoi.MaNhapHang = rd.Next(1, 100000000).ToString();
                // lưu vào bảng Nhập hàng
                nhapHangMoi.NgayNhap = DateTime.Now;
                nhapHangMoi.SoLuongNhap = 0;
                nhapHangMoi.TongTienNhap = 0;
                nhapHangMoi.Email = maTaiKhoan;
                nhapHangMoi.MaNhaCungCap = maNCC;
                db.NhapHang.Add(nhapHangMoi);
                db.SaveChanges();

                // lưu sản phẩm vào bảng chi tiết nhập hàng
                if (gioHangs != null)
                {
                    foreach (var item in gioHangs)
                    {
                        var chiTietNhapHang = new ChiTietNhapHang();
                        chiTietNhapHang.MaNhapHang = nhapHangMoi.MaNhapHang;
                        chiTietNhapHang.MaSanPham = item.MaSanPham;
                        chiTietNhapHang.TenSanPham = item.TenSanPham;
                        chiTietNhapHang.SoLuongNhap = Convert.ToInt32(item.SoLuong);
                        chiTietNhapHang.GiaNhap = Convert.ToInt32(item.Gia);
                        chiTietNhapHang.ThanhTien = Convert.ToInt32(item.TongTien);
                        db.ChiTietNhapHang.Add(chiTietNhapHang);
                        db.SaveChanges();
                    }
                }

                
                return RedirectToAction("Index");
            }
            return Redirect("/Accout/Login");
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
            var chiTietNhapHang = db.ChiTietNhapHang.Where(x=>x.MaNhapHang==id).ToList();
            foreach (var item in chiTietNhapHang)
            {
                db.ChiTietNhapHang.Remove(item);
            }
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
