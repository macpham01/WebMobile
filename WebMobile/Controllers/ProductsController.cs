using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;
using PagedList;

namespace WebMobile.Controllers
{
    public class ProductsController : Controller
    {
        private WebmobileDB db = new WebmobileDB();


        // GET: Products
        public ActionResult Index(int? page, string MaNSX, string title, string MaLoaiSP, string search)
        {
            var products = db.SanPham.Select(x=>x);
            if (MaNSX != null)
            {
                ViewBag.nameNSX = title;
               
                products = products.Where(x => x.MaNhaSanXuat.Equals(MaNSX));
            }

            if (MaLoaiSP != null)
            {
                ViewBag.TenLoaiSP = title;

                products = products.Where(x => x.MaLoaiSanPham.Equals(MaLoaiSP));
            }

            if (search != null)
            {
                ViewBag.Search = search;
                products = products.Where(x => x.TenSanPham.Contains(search));
            }
            ViewBag.soluong = 1; //mac dinh so luong san pham khi them vao gio hang la 1
            products = products.OrderBy(x=>x.TenSanPham);
            int pageSize = 9;
            int pageNumber = (page ?? 1);
            return View(products.ToPagedList(pageNumber, pageSize));
        }

        // GET: Products/Details?masp=5
        public ActionResult Details(string masp, string title)
        {
            var product = db.SanPham.SingleOrDefault(x => x.MaSanPham == masp);
            if (product == null)
            {
                return RedirectToAction("Index");
            }
            product.LuotView += 1;
            db.SaveChanges();
            ViewBag.nameProduct = title;
            ViewBag.Masp = masp;
            Session["masp"] = product.MaSanPham;
            return View(product);
        }

        // GET: Products/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Products/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Products/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Products/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Products/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Products/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
