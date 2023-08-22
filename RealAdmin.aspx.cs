using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using AmitmaizusFPV.App_Code;
using System.Threading;

namespace AmitmaizusFPV.WebPages
{
    public partial class RealAdmin : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["Admin"])
            {
                msg = "you are not belong here";
                
            }
            else
            {

                if (Request.Form["deleteButton"] != null)
                {
                    string phoneNumber = Request.Form["deleteButton"];
                    string sql = "DELETE FROM contact WHERE Phone_Number = '" + phoneNumber + "'";
                    DbHelper.ExecuteNonSelectQuery(sql);
                }

                string tableName = "contact";
                string sqlSelect = "SELECT * FROM " + tableName;
                DataTable table = App_Code.DbHelper.ExecuteSelectQuery(sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "אין נרשמים";
                else
                {
                    st += "<tr>";
                    st += "<th>First_Name</th>";
                    st += "<th>Last_Name</th>";
                    st += "<th>Phone_Number</th>";
                    st += "<th>Email</th>";
                    st += "<th>Subject</th>";
                    st += "<th>Message</th>";
                    st += "<th>Feedback_Rating</th>";
                    st += "<th>useful_Topic</th>";
                    st += "<th>Additional_Info_Topic</th>";
                    st += "<th>Website_Satisfaction</th>";
                    st += "<th>Admin</th>";
                    st += "<th>Delete account</th>";
                    st += "</tr>";
                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td>" + table.Rows[i]["First_Name"] + "</td>";
                        st += "<td>" + table.Rows[i]["Last_Name"] + "</td>";
                        st += "<td>" + table.Rows[i]["Phone_Number"] + "</td>";
                        st += "<td>" + table.Rows[i]["Email"] + "</td>";
                        st += "<td>" + table.Rows[i]["Subject"] + "</td>";
                        st += "<td>" + table.Rows[i]["Message"] + "</td>";
                        st += "<td>" + table.Rows[i]["Feedback_Rating"] + "</td>";
                        st += "<td>" + table.Rows[i]["useful_Topic"] + "</td>";
                        st += "<td>" + table.Rows[i]["Additional_Info_Topic"] + "</td>";
                        st += "<td>" + table.Rows[i]["Website_Satisfaction"] + "</td>";
                        st += "<td>" + (table.Rows[i]["Admin"].ToString() == "True" ? "yes" : "no") + "</td>";
                        st += "<td><form action='RealAdmin.aspx' method='post'><button name='deleteButton' value='" + table.Rows[i]["Phone_Number"] + "'>Delete</button></form></td>";
                        st += "</tr>";


                    }

                    msg = " number of registers:" + " " + length;
                }
            }
        }
    }
}      