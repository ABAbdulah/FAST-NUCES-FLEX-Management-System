using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdminSign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=ABDULLAH-S;Initial Catalog=ADMIN;Integrated Security=True");
        conn.Open();
        SqlCommand cm;
        string Fname = TextBox1.Text;
        string Lname = TextBox2.Text;
        string Email= TextBox3.Text;    
        string Contact= TextBox4.Text;
        string Password = TextBox5.Text;
        //check the presence
        string selectQuery = "SELECT COUNT(*) FROM AdminSignup$ WHERE Email_Id = @Email";
        cm = new SqlCommand(selectQuery, conn);
        cm.Parameters.AddWithValue("@Email", Email);
        int count = (int)cm.ExecuteScalar();
        cm.Dispose();
        if (count > 0)
        {

            // email already exists, show a warning message
            Response.Write("<script>alert('This email is already registered. Please use a different email address.');</script>");
        }
        else
        {
            string query = "Insert into AdminSignup$(Fname, Lname, Email_Id, ContactNo, Password) values (' " + Fname + "','" + Lname + "','" + Email + "','" + Contact + "','" + Password + "'  )";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();
            // signup successful, redirect to the next page
            Response.Redirect("AdminLogin.aspx");
        }
        conn.Close();   
        
    
    }
}