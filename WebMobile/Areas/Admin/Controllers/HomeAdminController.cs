using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/HomeAdmin
        public ActionResult Index()
        {
            if (Session["admin"] != null)
            {
                ViewBag.qualityProduct = db.SanPham.ToList().Count;
                ViewBag.qualityProducer = db.NhaSanXuat.ToList().Count;
                ViewBag.qualityType = db.LoaiSanPham.ToList().Count;
                ViewBag.qualityOrder = db.HoaDon.ToList().Count;
                return View();
            }
            return Redirect("/Accout/Login");
        }
    }
}