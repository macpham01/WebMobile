using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMobile.Models;
using WebMobile.Models.DTO;

namespace WebMobile.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        private WebmobileDB db = new WebmobileDB();

        // GET: Admin/ThongKe
        public ActionResult Index()
        {
            Session["username"] = null;
            if (Session["admin"] != null)
            {
                    return View();
            }
            return Redirect("/Accout/Login");
        }

        [HttpPost]
        public ActionResult Index(DateTime? batDau, DateTime? ketThuc)
        {
            Session["username"] = null;
            if (Session["admin"] != null)
            {
                try
                {
                    if (batDau == null || ketThuc == null)
                    {
                        ViewBag.error = "Vui lòng nhập đầy đủ ngày tháng.";
                        return View();
                    }
                    else if (batDau>ketThuc)
                    {
                        ViewBag.error = "Ngày bắt đầu phải nhỏ hơn ngày kết thúc";
                        return View();
                    }
                    else 
                    {
                        List<ThongKe> query = db.HoaDon.Join(db.ChiTietHoaDon, hd => hd.ID, cthd => cthd.OrderID,
                            (hd, cthd) => new { hd.NgayTao, cthd.TenSanPham, cthd.SoLuong, cthd.MaSanPham, cthd.TongTien }).
                                Where(x => x.NgayTao >= batDau && x.NgayTao <= ketThuc).GroupBy(x => x.MaSanPham).Select(k => new ThongKe
                                {
                                    soluong = k.Sum(y => y.SoLuong),
                                    tongtien = k.Sum(y => y.TongTien),
                                    sanpham = db.SanPham.FirstOrDefault(x=>x.MaSanPham==k.Select(y => y.MaSanPham).FirstOrDefault()),
                                    gianhap = db.ChiTietNhapHang.FirstOrDefault(x => x.MaSanPham == k.Select(y => y.MaSanPham).FirstOrDefault()).GiaNhap,
                                    tensp = k.Select(y => y.TenSanPham).FirstOrDefault(),
                                }).ToList();
                        ViewBag.batDau = String.Format("{0:dd/MM/yyyy}", batDau);
                        ViewBag.ketThuc = String.Format("{0:dd/MM/yyyy}", ketThuc); ;
                        ViewBag.thongke = query;
                        return View();
                    }
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex.ToString());   
                }

            }
            return Redirect("/Accout/Login");
        }
    }
}