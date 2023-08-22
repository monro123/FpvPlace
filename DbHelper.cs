using System.Data;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AmitmaizusFPV.App_Code
{
    public static class DbHelper
    {
        /// <summary>
        /// Create an sql connection to the database (does not actuall open the connection)
        /// Code here must be updated for each environment, as specified in the method remarks
        /// </summary>
        /// <returns>SqlConnection to the database (not opened yet)</returns>
        private static SqlConnection ConnectToDb()
        {
            /* Following changes must be done for the code to work:
             * 1. Change the value of dbFileName to match your databse file name 
             * (you can see the name in solution explorer under App_Data and also 
             * in Server Explorer under Data Connections)
             * 2. Change the value of connString as follows:
             *    a. In Server Explorer right click your database (under Data Connections)and then 
             *       click Properties
             *    b. Properties pane will be opened (usually on the bottom right corner). 
             *       Copy the value of a property named Connection String (select all that property's
             *       value,right click the selection and then click copy)
             *    c. Replace the value of connStringTillDbFile with part of the value you copied.
             *       Use the part from the begining of the value the full path of your db file.
             *       Note: when replacing the values, do not delete the @ sign
             *    d. Replace the value of connStringAfterDbFile with part of the value you copied.
             *       Use the part from after the db file and until the end of that value.
             *       Note: when replacing the values, do not delete the @ signs
             */
            string dbFileName = "Database.mdf";
            string dbFullPath = HttpContext.Current.Server.MapPath("~/App_Data/") + dbFileName;
            string connStringTillDbFile = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = ";
            string connStringAfterDbFile = @"; Integrated Security = True";
            string connString = connStringTillDbFile + dbFullPath + connStringAfterDbFile;

            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }

        internal static void AddParameter(string v, string firstName)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Executes an INSERT/UPDATE/DELETE SQL statement (not a SELECT query)
        /// and returns the number of records affected 
        /// </summary>
        /// <param name="sql">an SQL statement of type INSERT/UPDATE/DELETE (not SELECT)</param>
        /// <returns>the number of records affected by the SQL execution</returns>
        public static int ExecuteNonSelectQuery(string sql)
        {
            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            int rowsAffected = com.ExecuteNonQuery();
            com.Dispose();
            conn.Close();
            return rowsAffected;
        }

        /// <summary>
        /// Executes a SELECT SQL query (not an INSERT/UPDATE/DELETE), and returns a DataTable
        /// filled with the data returned from the database.
        /// </summary>
        /// <param name="sql">an SQL statement of type SELECT</param>
        /// <returns>DataTable filled with the data returned by the given sql query</returns>
        public static DataTable ExecuteSelectQuery(string sql)
        {
            SqlConnection conn = ConnectToDb();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            return dt;
        }

    }
}


