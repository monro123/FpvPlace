using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace AmitmaizusFPV.WebPages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //string fileName = "Database.mdf";
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
                    st += "</tr>";


                }

                msg = " אנשים" + length + " :נרשמו";
            }
        }
    }
}






