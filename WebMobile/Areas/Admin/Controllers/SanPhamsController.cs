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
using OfficeOpenXml;
using OfficeOpenXml.Style;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;

namespace WebMobile.Areas.Admin.Controllers
{
    public class SanPhamsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/SanPhams
        public ActionResult Index(int? page, string search)
        {
            Session["username"] = null;
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
            try
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
           catch(Exception error)
            {
                Console.WriteLine("{0}", error);
                return RedirectToAction("Index");
            }

        }

        // GET: Admin/SanPhams/Create
        public ActionResult Create(string messErrorExcel)
        {
            if (Session["admin"] != null)
            {
                if (messErrorExcel != null) ViewBag.MessErrorExcel = messErrorExcel;
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
        public ActionResult Create([Bind(Include = "MaLoaiSanPham,MaNhaSanXuat,TenSanPham,CauHinh,Image,Gia,SoLuongDaBan,LuotView,MoTa,TinhTrang,GhiChu")] SanPham sanPham, HttpPostedFileBase Image)
        {
            if (ModelState.IsValid)
            {
                string Numrd_str;
                Random rd = new Random();
                Numrd_str = rd.Next(1, 100000000).ToString();
                sanPham.MaSanPham = Numrd_str;
                if (Image.FileName != null)
                {
                    string fileName = sanPham.MaSanPham;
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
        public ActionResult Edit([Bind(Include = "MaSanPham,MaLoaiSanPham,MaNhaSanXuat,TenSanPham,CauHinh,Image,Gia,SoLuongDaBan,LuotView,MoTa,TinhTrang,GhiChu")] SanPham sanPham, HttpPostedFileBase image)
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

        //UPLOAD FILE EXCEL

        [HttpPost]
        public ActionResult Upload(HttpPostedFileBase file)
        {
            if (file != null && file.ContentLength > 0 && file.ContentType == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
            {
                try
                {
                    using (var excelPackage = new ExcelPackage(file.InputStream))
                    {
                        var worksheet = excelPackage.Workbook.Worksheets[0];
                        var rowCount = worksheet.Dimension.Rows;

                        var products = new List<SanPham>();

                        for (int i = 2; i <= rowCount; i++)
                        {
                            string Numrd_str;
                            Random rd = new Random();
                            Numrd_str = rd.Next(1, 100000000).ToString();
                            var masanpham = Numrd_str;
                            var maLoaiSanPham = worksheet.Cells[i, 1].Value?.ToString();
                            var maNhaSanXuat = worksheet.Cells[i, 2].Value?.ToString();
                            var tenSanPham = worksheet.Cells[i, 3].Value?.ToString();
                            var cauHinh = worksheet.Cells[i, 4].Value?.ToString();
                            var gia = Convert.ToInt32(worksheet.Cells[i, 5].Value);
                            var soLuongDaBan = Convert.ToInt32(worksheet.Cells[i, 6].Value);
                            var luotView = Convert.ToInt32(worksheet.Cells[i, 7].Value);
                            var tinhTrang = worksheet.Cells[i, 8].Value?.ToString();
                            var ghiChu = worksheet.Cells[i, 9].Value?.ToString();
                            var image = worksheet.Cells[i, 10].Value?.ToString();
                            var moTa = worksheet.Cells[i, 11].Value?.ToString();
                       
                            var product = new SanPham
                            {
                                MaSanPham=masanpham,
                                MaLoaiSanPham =maLoaiSanPham,
                                MaNhaSanXuat = maNhaSanXuat,
                                TenSanPham = tenSanPham,
                                CauHinh = cauHinh,
                                Gia = gia,
                                SoLuongDaBan=soLuongDaBan,
                                LuotView=luotView,
                                TinhTrang=tinhTrang,
                                GhiChu=ghiChu,
                                Image=image,
                                MoTa=moTa,
                            };

                            db.SanPham.Add(product);
                            db.SaveChanges();
                        }
                        
                            // Save products to database
                        }
                    return RedirectToAction("index");
                }

                catch
                {
                    return RedirectToAction("index");


                }


            }

            return RedirectToAction("Create", new { messErrorExcel ="Lỗi khi import dữ liệu từ file excel"});
        }

        public ActionResult ExportToExcel()
        {

            var products = db.SanPham.ToList();

            // Tạo một bảng tính mới
            ExcelPackage package = new ExcelPackage();

            // Thêm một trang tính mới vào bảng tính
            ExcelWorksheet worksheet = package.Workbook.Worksheets.Add("Danh sách sản phẩm");

            // Thêm dữ liệu vào trang tính
            worksheet.Cells[1, 1].Value = "Mã loại sản phẩm";
            worksheet.Cells[1, 2].Value = "Mã nhà sản xuất";
            worksheet.Cells[1, 3].Value = "Tên sản phẩm";
            worksheet.Cells[1, 4].Value = "Giá";
            worksheet.Cells[1, 5].Value = "Số lượng";
            worksheet.Cells[1, 6].Value = "Lượt view";

            // Thêm dữ liệu cho từng dòng
            int row = 2;
            foreach (var product in products)
            {
                worksheet.Cells[row, 1].Value = product.MaLoaiSanPham;
                worksheet.Cells[row, 2].Value = product.MaNhaSanXuat;
                worksheet.Cells[row, 3].Value = product.TenSanPham;
                worksheet.Cells[row, 4].Value = String.Format("{0:#,0đ}",product.Gia) ;
                worksheet.Cells[row, 5].Value = product.SoLuongDaBan;
                worksheet.Cells[row, 6].Value = product.LuotView;
                row++;
            }

            // Thiết lập định dạng cho các ô trong trang tính
            worksheet.Cells["A1:F1"].Style.Font.Bold = true;
            worksheet.Cells.Style.Font.Name = "Times New Roman";
            worksheet.Cells.Style.Font.Size = 11;

            // Tạo ra file Excel từ bảng tính
            byte[] excelData = package.GetAsByteArray();

            // Trả về file Excel cho client
            return File(excelData, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "DanhSachSanPham.xlsx");
        }
    }
}
