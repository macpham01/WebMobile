﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;
using System.Security.Cryptography;
using System.Text;

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
            string passWord = toMD5(user.PasswordHash);
            var acc = db.AspNetUsers.FirstOrDefault(x => x.Email == user.Email && x.PasswordHash == passWord);
            if (acc == null)
            {
                ViewBag.error = "Email hoặc mật khẩu không chính xác";
                return View();
            }
            if (acc.isAdmin) {
                //Session["admin"] = "admin";
                Session["admin"] = acc.UserName;
                return Redirect("/Admin");
            }
            Session["username"] = acc.UserName;  //ở đây UserName và Email cùng một tên
            //thật ra mình muốn đặt email làm khoá chính thì Session["username"] = acc.Email
            Session["Id"] = acc.Id;
            var gh = db.GioHang.Where(x => x.MaTaiKhoan == acc.Email).ToList();
            Session["countItem"] = gh.Count();
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
                    user.PasswordHash = toMD5(user.PasswordHash);
                    db.AspNetUsers.Add(user);
                    db.SaveChanges();
                    return RedirectToAction("Login");
                }
                catch
                {
                    ViewBag.error = "Mời bạn nhập một email khác";
                    return View();
                }
                
           }
            ViewBag.error = "Xác nhận mật khẩu không chính xác";
            return View();
        }
        public ActionResult Logout()
        {
            Session["username"] = null;
            Session["admin"] = null;
            Session["countItem"] = null;
            return RedirectToAction("Login");
        }

        private string toMD5(string pass)
        {
            MD5CryptoServiceProvider myMD5 = new MD5CryptoServiceProvider();
            byte[] myPass = System.Text.Encoding.UTF8.GetBytes(pass);
            myPass = myMD5.ComputeHash(myPass);

            StringBuilder s = new StringBuilder();
            foreach (byte p in myPass)
            {
                s.Append(p.ToString("x").ToLower());
            }
            return s.ToString();
        }
    }
}