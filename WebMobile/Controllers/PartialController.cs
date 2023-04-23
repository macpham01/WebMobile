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
            var sanpham = db.SanPham.ToList();
            ViewBag.discount5to10 = sanpham.Where(x=>x.GiamGia>=5 && x.GiamGia<=10).Count();
            ViewBag.discount10to15 = sanpham.Where(x=>x.GiamGia>=10 && x.GiamGia<=15).Count();
            ViewBag.discount15to20 = sanpham.Where(x=>x.GiamGia>=15 && x.GiamGia<=20).Count();
            ViewBag.discountUpto20 = sanpham.Where(x=>x.GiamGia>20).Count();
            return PartialView();
        }

        public ActionResult NewProduct()
        {
            var newProduct = db.SanPham.Where(x => x.GhiChu == "New").Take(4);
            ViewBag.soluong = 1; //mac dinh so luong san pham khi them vao gio hang la 1
            return PartialView(newProduct.ToList());
        }

        public ActionResult SpecialProduct(int NumberOfProducts)
        {
            var specialProduct = db.SanPham.OrderByDescending(x=>x.Gia).Take(NumberOfProducts);
            ViewBag.soluong = 1; //mac dinh so luong san pham khi them vao gio hang la 1
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

        public ActionResult AllCommentByMasp()
        {
            string masp = (string)Session["masp"];
            var commentByMasp = db.BinhLuan.Where(x => x.MaSanPham.Equals(masp));
            return PartialView(commentByMasp);
        }
    }
}