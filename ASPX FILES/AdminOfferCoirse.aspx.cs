using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminOfferCoirse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "Data Source=ABDULLAH-S;Initial Catalog=ADMIN;Integrated Security=True";
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();

        string courseCode = TextBox1.Text;
        string courseCRDS = TextBox2.Text;

        if (Button1.Enabled)
        {
            string query = "SELECT COUNT(*) FROM Courses WHERE CourseCode = @CourseCode OR CREDIT_HRS = @CREDIT_HRS";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@CourseCode", courseCode);
            command.Parameters.AddWithValue("@CREDIT_HRS", courseCRDS);

            int count = (int)command.ExecuteScalar();

            if (count == 0)
            {
                query = "INSERT INTO Courses(CourseCode, CREDIT_HRS) VALUES (@CourseCode, @CREDIT_HRS)";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@CourseCode", courseCode);
                command.Parameters.AddWithValue("@CREDIT_HRS", courseCRDS);
                command.ExecuteNonQuery();
                Response.Redirect("Course added successfully!");
            }
            else
            {
                Response.Redirect("<script>alert('Course already exists in the database.');</script>");
            }
        }
        else if (Button2.Enabled)
        {
            string query = "DELETE FROM Courses WHERE CourseCode = @CourseCode";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@CourseCode", courseCode);
            int rowsAffected = command.ExecuteNonQuery();
            if (rowsAffected == 1)
            {
                Response.Redirect("<script>alert(Course removed successfully!;</script>");
            }
            else
            {
                Response.Redirect("<script>alert('page not found in database.');</script>");
            }
        }

        connection.Close();


    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}