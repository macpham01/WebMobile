using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Controllers
{
    public class HomeController : Controller
    {
        private WebmobileDB db = new WebmobileDB();
        public ActionResult Index()
        {
            //Session["admin"] = null;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult test()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}