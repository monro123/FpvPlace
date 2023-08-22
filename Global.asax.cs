using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace AmitmaizusFPV
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["maxScore"] = 0;
        }
        protected void Application_End(object sender, EventArgs e)
        {
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Phone_Number"] = "";
            Session["Email"] = "";
            Session["First_Number"] = "";
            Session["Last_Number"] = "";
            Session["isSigned"] = false;
            Session["Admin"] = false;
        }
        protected void Session_End(object sender, EventArgs e)
        {
            Session["Phone_Number"] = "";
            Session["Email"] = "";
            Session["First_Number"] = "";
            Session["Last_Number"] = "";
            Session["isSigned"] = false;
            Session["Admin"] = false;
        }
    }
}