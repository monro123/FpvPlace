using AmitmaizusFPV.App_Code;
using System;
using System.Web.UI;

namespace AmitmaizusFPV.WebPages
{
    public partial class Profile : System.Web.UI.Page
    {
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["isSigned"])
            { Response.Redirect("FPVhouse.aspx"); }
            if (Request.Form.Count > 0)
            {
                // Retrieve form data
                string oldPassword = Request.Form["oldPassword"];
                string newPassword = Request.Form["newPassword"];
                string phone = Session["Phone_Number"].ToString();

                if (string.IsNullOrEmpty(oldPassword) || string.IsNullOrEmpty(newPassword))
                {
                    msg = "Please fill in all the required fields.";
                }
                else
                {
                    // Update the SQL query using concatenated values (not recommended due to SQL injection vulnerability)
                    string sql = "UPDATE contact SET Password = '" + (newPassword) + "' WHERE Password = '" + (oldPassword) + "' AND Phone_Number='" + phone + "'";
                    int rowsAffected = DbHelper.ExecuteNonSelectQuery(sql);

                    if (rowsAffected > 0)
                    {
                        // Successful database update
                        msg = "Password changed successfully!";
                    }
                    else
                    {
                        // Error occurred while updating the database
                        msg = "Error: Failed to change password.";
                    }
                }
            }
            }
        }
    }

