using OfficeOpenXml;
using OfficeOpenXml.Style;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Areas.Admin.Controllers
{
    public class HoaDonsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/HoaDons
        public ActionResult Index(int? page)
        {
            Session["username"] = null;
            if (Session["admin"] != null)
            {
                var hoaDon = db.HoaDon.Include(h => h.AspNetUsers);
                hoaDon = hoaDon.OrderByDescending(x => x.NgayTao);
                int pageSize = 5;
                int pageNumber = (page ?? 1);
                return View(hoaDon.ToPagedList(pageNumber, pageSize));
            }
            return Redirect("/Accout/Login");
        }

        public ActionResult Details(long? id)
        {
            try
            {
                if (Session["admin"] != null)
                {
                    if (id == null)
                    {
                        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                    }
                    var orderDetails = db.ChiTietHoaDon.Where(x=>x.OrderID==id);
                    if (orderDetails == null)
                    {
                        return HttpNotFound();
                    }
                    return View(orderDetails);
                }
                return Redirect("/Accout/Login");
            }
            catch (Exception error)
            {
                Console.WriteLine("{0}", error);
                return RedirectToAction("Index");
            }

        }

        // GET: Admin/HoaDons/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HoaDon hoaDon = db.HoaDon.Find(id);
            if (hoaDon == null)
            {
                return HttpNotFound();
            }
            ViewBag.NguoiDat = new SelectList(db.AspNetUsers, "Email", "Id", hoaDon.NguoiDat);
            return View(hoaDon);
        }

        // POST: Admin/HoaDons/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,NgayTao,NguoiDat,NguoiNhan,SDT,DiaChi,TongTien,TrangThai,CCCD,HinhThucThanhToan,TinhTrang")] HoaDon hoaDon)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hoaDon).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.NguoiDat = new SelectList(db.AspNetUsers, "Email", "Id", hoaDon.NguoiDat);
            return View(hoaDon);
        }

        // GET: Admin/HoaDons/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HoaDon hoaDon = db.HoaDon.Find(id);
            if (hoaDon == null)
            {
                return HttpNotFound();
            }
            return View(hoaDon);
        }

        // POST: Admin/HoaDons/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            //Xoá các sản phẩm có trong hoá đơn này (ở trong bảng chi tiết hoá đơn)
            var orderDetails = db.ChiTietHoaDon.Where(x=>x.OrderID == id).ToList();
            foreach (var item in orderDetails)
            {
                db.ChiTietHoaDon.Remove(item);
                db.SaveChanges();
            }

            //Xoá hoá đơn
            HoaDon hoaDon = db.HoaDon.Find(id);
            db.HoaDon.Remove(hoaDon);
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

        public ActionResult ExportToExcel()
        {

            var orders = db.HoaDon.ToList();

            // Tạo một bảng tính mới
            ExcelPackage package = new ExcelPackage();

            // Thêm một trang tính mới vào bảng tính
            ExcelWorksheet worksheet = package.Workbook.Worksheets.Add("Danh sách đơn hàng");

            // Thêm dữ liệu vào trang tính
            worksheet.Cells[1, 1].Value = "Mã đơn hàng";
            worksheet.Cells[1, 2].Value = "Ngày tạo";
            worksheet.Cells[1, 3].Value = "Người nhận";
            worksheet.Cells[1, 4].Value = "Số điện thoại";
            worksheet.Cells[1, 5].Value = "Địa chỉ";
            worksheet.Cells[1, 6].Value = "CCCD";
            worksheet.Cells[1, 7].Value = "Tổng tiền";
            worksheet.Cells[1, 8].Value = "Hình thức thanh toán";
            worksheet.Cells[1, 9].Value = "Trạng thái giao hàng";

            // Thêm dữ liệu cho từng dòng
            int row = 2;
            foreach (var order in orders)
            {
                worksheet.Cells[row, 1].Value = order.ID;
                worksheet.Cells[row, 2].Value = String.Format("{0:dd/MM/yyyy}", order.NgayTao);
                worksheet.Cells[row, 3].Value = order.NguoiNhan;
                worksheet.Cells[row, 4].Value = order.SDT;
                worksheet.Cells[row, 5].Value = order.DiaChi;
                worksheet.Cells[row, 6].Value = order.CCCD;
                worksheet.Cells[row, 7].Value = String.Format("{0:#,0đ}", order.TongTien);
                worksheet.Cells[row, 8].Value = order.HinhThucThanhToan;
                worksheet.Cells[row, 9].Value = order.TrangThai;
                row++;
            }
            

            // Thiết lập định dạng cho các ô trong trang tính
            worksheet.Cells["A1:I1"].Style.Font.Bold = true;
            worksheet.Cells.Style.Font.Name = "Times New Roman";
            worksheet.Cells.Style.Font.Size = 12;

            // Thiết lập độ rộng cho các ô trong excel
            worksheet.Column(1).Width = 12;
            worksheet.Column(1).Style.HorizontalAlignment = ExcelHorizontalAlignment.Left;
            worksheet.Column(2).Width = 12;
            worksheet.Column(3).Width = 20;
            worksheet.Column(4).Width = 18;
            worksheet.Column(5).Width = 30;
            worksheet.Column(6).Width = 18;
            worksheet.Column(7).Width = 15;
            worksheet.Column(8).Width = 23;
            worksheet.Column(9).Width = 23;

            // Tạo ra file Excel từ bảng tính
            byte[] excelData = package.GetAsByteArray();

            // Trả về file Excel cho client
            return File(excelData, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "DanhSachDonHang.xlsx");
        }
    }
}
