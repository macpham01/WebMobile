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
    }
}