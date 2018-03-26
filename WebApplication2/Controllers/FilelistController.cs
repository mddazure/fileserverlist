using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Diagnostics;
using System.IO;

namespace WebApplication2.Controllers
{
    public class FilelistController : Controller
    {

        public Models.Fileserver fs;
        public Models.FileList fl;

        // GET: Filelist/Listfiles
        public ActionResult Listfiles()
        {
            fs = new Models.Fileserver();
            fl = new Models.FileList();

            fs.Uncpath = @"\\10.0.0.4\km01";
            fs.User = "km01";
            fs.Password = "Centric01%";

            //fs.Uncpath = @"\\localhost\Users\madedroo";

            fs.FileserverUse();

            fl.Filelist = Directory.GetFiles(fs.Uncpath);

            //ViewBag.Filelist = fl;

            fs.FileserverClose();

            return View(fl.Filelist);
        }





/*        // GET: Filelist
        public ActionResult Index()
        {
            return View();
        }

        // GET: Filelist/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Filelist/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Filelist/Create
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

        // GET: Filelist/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Filelist/Edit/5
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

        // GET: Filelist/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Filelist/Delete/5
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
        }*/
    }
}
