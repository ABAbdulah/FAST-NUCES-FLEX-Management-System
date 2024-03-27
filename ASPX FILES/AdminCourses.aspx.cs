using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "Data Source=ABDULLAH-S;Initial Catalog=ADMIN;Integrated Security=True";
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();

        string query = "SELECT COURSE_ID, CREDIT_HRS FROM Course";
        SqlCommand command = new SqlCommand(query, connection);

        SqlDataReader reader = command.ExecuteReader();

        while (reader.Read())
        {
            string courseID = reader.GetString(0);
            int creditHrs = reader.GetInt32(1);
            Console.WriteLine("Course ID: " + courseID + ", Credit Hours: " + creditHrs);
        }

        reader.Close();
        connection.Close();

    }
}