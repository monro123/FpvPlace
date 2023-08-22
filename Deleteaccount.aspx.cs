using AmitmaizusFPV.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmitmaizusFPV.WebPages
{
    public partial class WebForm1 : System.Web.UI.Page
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
                string phoneNumber = Session["Phone_Number"].ToString();
                string sql = "DELETE FROM contact WHERE Phone_Number = '" + phoneNumber + "'";
                DbHelper.ExecuteNonSelectQuery(sql);
                Session.Abandon();

                Response.Redirect("FPVhouse.aspx");
            }
        }
    }
}