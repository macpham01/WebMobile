using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Controllers
{
    public class AccoutController : Controller
    {
        private WebmobileDB db = new WebmobileDB();
        // GET: Accout
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(AspNetUsers user)
        {
            var acc = db.AspNetUsers.FirstOrDefault(x => x.Email == user.Email && x.PasswordHash == user.PasswordHash);
            if (acc == null)
            {
                ViewBag.error = "Email hoặc mật khẩu không chính xác";
                return View();
            }
            Session["username"] = acc.UserName;
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Signup()
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult Signup(AspNetUsers user, string confirmPassword)
        {
          if (user.PasswordHash == confirmPassword)
          {
                try
                {
                    string Numrd_str;
                    Random rd = new Random();
                    Numrd_str = rd.Next(1, 10000).ToString();
                    user.Id = Numrd_str;
                    user.UserName = user.Email;
                    db.AspNetUsers.Add(user);
                    db.SaveChanges();
                    return RedirectToAction("Login");
                }
                catch
                {
                    ViewBag.error = "Mời bạn nhập lại thông tin";
                    return View();
                }
                
           }
            ViewBag.error = "Xác nhận mật khẩu không chính xác";
            return View();
        }
        public ActionResult Logout()
        {
            Session["username"] = null;
            return RedirectToAction("Login");
        }
    }
}