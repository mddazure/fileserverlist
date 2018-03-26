using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Diagnostics;
using System.IO;
namespace WebApplication2.Models
{

    
    public class Fileservermap
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

        private string[] fileslist;

        public string[] Fileslist
        {
            get { return fileslist; }
            set { fileslist = value; }
        }


        private string netuseparam;      

       /* Fileservermap()
        {
            
        }*/
        
        public void Getfilelist()
        {
            netuseparam = $"{uncpath}";// //user:{user} {password}";

            ProcessStartInfo processStartInfo = new ProcessStartInfo("net.exe", netuseparam);
            Process process = Process.Start(processStartInfo);

            fileslist = Directory.GetFiles(uncpath);
        }
        
    }
}