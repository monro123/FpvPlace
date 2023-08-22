using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmitmaizusFPV.WebPages
{
    public partial class Logout : System.Web.UI.Page
    {
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["isSigned"])
            {
                msg = "you are not belong here";

            }
            else
            {
                Session.Abandon();
                Response.Redirect("FPVhouse.aspx");
            }
        }
    }
}