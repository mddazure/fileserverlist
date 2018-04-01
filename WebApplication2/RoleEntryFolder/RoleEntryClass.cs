using Microsoft.WindowsAzure.ServiceRuntime;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Runtime.InteropServices;

namespace WebApplication2.RoleEntryFolder
{
    public class RoleEntryClass : RoleEntryPoint

    {
        [DllImport("Mpr.dll",
            EntryPoint = "WNetAddConnection2",
            CallingConvention = CallingConvention.Winapi)]
        private static extern int WNetAddConnection2(NETRESOURCE lpNetResource,
                                             string lpPassword,
                                             string lpUsername,
                                             System.UInt32 dwFlags);

        [DllImport("Mpr.dll",
                   EntryPoint = "WNetCancelConnection2",
                   CallingConvention = CallingConvention.Winapi)]
        private static extern int WNetCancelConnection2(string lpName,
                                                        System.UInt32 dwFlags,
                                                        System.Boolean fForce);

        [StructLayout(LayoutKind.Sequential)]
        private class NETRESOURCE
        {
            public int dwScope;
            public ResourceType dwType;
            public int dwDisplayType;
            public int dwUsage;
            public string lpLocalName;
            public string lpRemoteName;
            public string lpComment;
            public string lpProvider;
        };

        public enum ResourceType
        {
            RESOURCETYPE_DISK = 1,
        };

        public static void MountShare(string shareName,
                              string driveLetterAndColon,
                              string username,
                              string password)
        {
            if (!String.IsNullOrEmpty(driveLetterAndColon))
            {
                // Make sure we aren't using this driveLetter for another mapping
                WNetCancelConnection2(driveLetterAndColon, 0, true);
            }

            NETRESOURCE nr = new NETRESOURCE();
            nr.dwType = ResourceType.RESOURCETYPE_DISK;
            nr.lpRemoteName = shareName;
            nr.lpLocalName = driveLetterAndColon;

            int result = WNetAddConnection2(nr, password, username, 0);

            if (result != 0)
            {
                throw new Exception("WNetAddConnection2 failed with error " + result);
            }
        }
        public override bool OnStart()
        {
           try
            {
                MountShare("\\\\10.0.0.5\\customers",
           "z:",
           "centric",
           "pass01%");
                        }
            catch (Exception e)
            {
                Trace.WriteLine("Exception during MountShare customers in OnStart: " + e.ToString());
                // Take other action as needed.
            }

            
            return base.OnStart();

        }
    }
}