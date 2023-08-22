using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmitmaizusFPV.WebPages
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string msgg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isSigned"] != null && (bool)Session["isSigned"])
            {
                string firstName = Session["First_Name"].ToString();
                string lastName = Session["Last_Name"].ToString();
                msgg = "  " + firstName + " " + lastName;
            }
        }
    }
}