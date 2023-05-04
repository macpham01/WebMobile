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
        public ActionResult Index(int? page, string MaNSX, string title, string MaLoaiSP, string search, string sorted, int? discountStart, int? discountEnd)
        {
            try
            {
                var products = db.SanPham.Select(x => x);
                Session["ReturnUrl"] = Request.Url.AbsoluteUri;
                if (MaNSX != null)
                {
                    ViewBag.MaNSX = MaNSX;
                    products = products.Where(x => x.MaNhaSanXuat.Equals(MaNSX));
                }

                if (MaLoaiSP != null)
                {

                    ViewBag.MaLoaiSP = MaLoaiSP;
                    products = products.Where(x => x.MaLoaiSanPham.Equals(MaLoaiSP));
                }

                if (title != null)
                {
                    ViewBag.name = title;
                }

                if (search != null)
                {
                    ViewBag.Search = search;
                    products = products.Where(x => x.TenSanPham.Contains(search));
                }
                ViewBag.soluong = 1; //mac dinh so luong san pham khi them vao gio hang la 1

                if (discountStart != null && discountEnd != null)
                {
                    ViewBag.name = $"Giảm giá {discountStart}% - {discountEnd}%";
                    ViewBag._discountStart = discountStart;
                    ViewBag._discountEnd = discountEnd;
                    if (discountStart == 20)
                    {
                        products = products.Where(x => x.GiamGia > discountStart);
                        ViewBag.name = $"Giảm giá > {discountStart}%";
                    }
                    else
                        products = products.Where(x => x.GiamGia >= discountStart && x.GiamGia <= discountEnd);
                }
                int pageSize = 9;
                switch (sorted)
                {
                    //case "desName":
                    //    products = products.OrderByDescending(x => x.TenSanPham);
                    //    break;
                    case "desPrice":
                        products = products.OrderByDescending(x => (x.Gia * (100 - x.GiamGia)) / 100);
                        ViewBag.name = "Sắp xếp theo giá";
                        break;
                    case "price":
                        products = products.OrderBy(x => (x.Gia * (100 - x.GiamGia)) / 100);
                        ViewBag.name = "Sắp xếp theo giá";
                        break;
                    default:
                        products = products.OrderBy(x => x.TenSanPham);
                        break;
                }
                ViewBag.Sorted = sorted;
                int pageNumber = (page ?? 1);
                return View(products.ToPagedList(pageNumber, pageSize));
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return RedirectToAction("Index", "Home");
            }
        }

        // GET: Products/Details?masp=5
        public ActionResult Details(string masp, string title, string errorQuantity)
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
            ViewBag.ErrorQuantity = errorQuantity;
            Session["masp"] = product.MaSanPham;
            Session["ReturnUrl"] = Request.Url.AbsoluteUri;
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
