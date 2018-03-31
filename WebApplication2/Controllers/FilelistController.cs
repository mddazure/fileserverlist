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

        // GET: Filelist/ListfilesKM01
        public ActionResult ListfilesKM01()
        {
            fl = new Models.FileList();
            
            fl.Filelist = Directory.GetFiles("z:\\km01");
           
            return View("Listfiles",fl.Filelist);
        }

        // GET: Filelist/ListfilesKM02
        public ActionResult ListfilesKM02()
        {
            
            fl = new Models.FileList();
                     
            fl.Filelist = Directory.GetFiles("z:\\km02");

            return View("Listfiles",fl.Filelist);
        }
                        
    }
}
