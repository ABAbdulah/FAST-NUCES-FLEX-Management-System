using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   // Declare and initialize the SqlConnection object
        SqlConnection conn = new SqlConnection("Data Source=ABDULLAH-S;Initial Catalog=ADMIN;Integrated Security=True");

        // Open the connection
        conn.Open();
        string email = Session["email"] as string;
        SqlCommand cmd = new SqlCommand("SELECT Fname, Lname, ContactNo FROM AdminSignup$ WHERE Email_Id = @Email", conn);
        cmd.Parameters.AddWithValue("@Email", email );

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            TextBox1.Text = reader["Fname"].ToString();
            TextBox2.Text = reader["Lname"].ToString();
            TextBox4.Text = reader["ContactNo"].ToString();
        }
        reader.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Redirect to the login page
        Response.Redirect("AdminLogin.aspx");
    }
}