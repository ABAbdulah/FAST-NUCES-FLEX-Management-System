using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void MyTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=ABDULLAH-S;Initial Catalog=ADMIN;Integrated Security=True");
        conn.Open();
        SqlCommand cm;
        string Email = MyTextBox.Text;
        string Password = TextBox1.Text;
        string query = "SELECT COUNT(*) FROM AdminSignup$ WHERE Email_Id = @Email AND Password = @Password";
        cm = new SqlCommand(query, conn);
        cm.Parameters.AddWithValue("@Email", Email);
        cm.Parameters.AddWithValue("@Password", Password);
        int count = (int)cm.ExecuteScalar();
        cm.Dispose();
        if (count > 0)
        {

            // Assuming email is the email address entered by the user
            Session["email"] = Email;
            // email and password match, login successful

            Response.Redirect("AdminHome.aspx");
            Response.Write("<script>alert(' Please GOOOOO again.');</script>");

        }
        else
        {
            // email and password do not match, show an error message
            Response.Write("<script>alert('Invalid email or password. Please try again.');</script>");
        }
        conn.Close();
    }
}