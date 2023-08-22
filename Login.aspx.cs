using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using AmitmaizusFPV.App_Code;

namespace AmitmaizusFPV.WebPages
{
    public partial class Login : System.Web.UI.Page
    {
        public string msg = "";

        public String sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.Count > 0)
            {
                string password = Request.Form["password"];
                string phoneNumber = Request.Form["phone-number"];
                Session["num"] = phoneNumber;

                String tableName = "contact";

                if (string.IsNullOrEmpty(phoneNumber) || phoneNumber.Trim().Length != 10 || string.IsNullOrEmpty(password) || password.Trim() == "")
                {
                    msg = "*Please fill in all the required fields.*";

                }
                else
                {
                    sqlLogin = "SELECT * FROM " + tableName + " WHERE password = '" + password + "' AND Phone_Number = '" + phoneNumber + "'";
                    DataTable dt = DbHelper.ExecuteSelectQuery(sqlLogin);
                    int numRows = dt.Rows.Count;
                    if (numRows == 1)
                    {
                        Session["isSigned"] = true;
                        if ((bool)dt.Rows[0]["Admin"] && !string.IsNullOrEmpty(phoneNumber))
                        {
                            Session["Admin"] = true;
                        }

                        else
                        {
                            Session["Admin"] = false;
                        }
                        Session["Phone_Number"] = phoneNumber;
                        Session["Email"] = dt.Rows[0]["Email"];
                        Session["First_Name"] = dt.Rows[0]["First_Name"];
                        Session["Last_Name"] = dt.Rows[0]["Last_Name"];
                        Response.Redirect("FPVhouse.aspx");
                    }

                    else
                    {
                        msg = "*Incorrect password or phone number*";
                    }
                }

            }

        }
    }
}


