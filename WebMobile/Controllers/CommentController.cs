using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;

namespace WebMobile.Controllers
{
    public class CommentController : Controller
    {
        private WebmobileDB db = new WebmobileDB();
        // GET: Comment
        public ActionResult Index()
        {   
            return View();
        }
        [HttpPost]
        public ActionResult Create(BinhLuan newBinhluan, string tensanpham)
        {
            newBinhluan.TinhTrang = 0;
            newBinhluan.Ngay = DateTime.Now;
            db.BinhLuan.Add(newBinhluan);
            db.SaveChanges();
            return RedirectToAction("Details", "Products", new { masp = newBinhluan.MaSanPham, title = tensanpham});
        }
    }
}