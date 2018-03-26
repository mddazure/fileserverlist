using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Diagnostics;
using System.IO;

namespace WebApplication2.Models
{
    public class Fileserver
    {
        private string uncpath;

        public string Uncpath
        {
            get { return uncpath; }
            set { uncpath = value; }
        }
        private string user;

        public string User
        {
            get { return user; }
            set { user = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        private string netuseparam;

        public Fileserver()
        {
            
        }

        public void FileserverUse()
        {
            netuseparam = $"{uncpath} /user:{user} {password}";

            ProcessStartInfo processStartInfo = new ProcessStartInfo("net.exe", netuseparam);
            Process process = Process.Start(processStartInfo);
        }

        public void FileserverClose()
        {
            netuseparam = $"{uncpath} /delete";
            ProcessStartInfo processStartInfo = new ProcessStartInfo("net.exe", netuseparam);
            Process process = Process.Start(processStartInfo);

        }
    }
}