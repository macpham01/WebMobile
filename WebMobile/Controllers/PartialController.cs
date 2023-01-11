using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Controllers
{
    public class PartialController : Controller
    {
        private WebmobileDB db = new WebmobileDB();
        // GET: Partial
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Sidebar()
        {
            return PartialView();
        }

        public ActionResult NewProduct()
        {
            var newProduct = db.SanPham.Where(x => x.GhiChu == "New").Take(4);
            return PartialView(newProduct.ToList());
        }

        public ActionResult SpecialProduct(int NumberOfProducts)
        {
            
            var specialProduct = db.SanPham.OrderByDescending(x=>x.Gia).Take(NumberOfProducts);
            return PartialView(specialProduct.ToList());
        }

        public ActionResult MenuProducer()
        {
            var producer = db.NhaSanXuat;
            return PartialView(producer.ToList());
        }

        public ActionResult MenuProductType()
        {
            var producer = db.LoaiSanPham;
            return PartialView(producer.ToList());
        }

        public ActionResult getImage(string masp)
        {
            var product = db.SanPham.FirstOrDefault(x => x.MaSanPham == masp);
            return PartialView(product);
        }
    }
}