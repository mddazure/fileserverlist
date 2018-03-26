using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{
    public class FileList
    {

        private string[] filelist;

        public string[] Filelist
        {
            get { return filelist; }
            set { filelist = value; }
        }
    }
}