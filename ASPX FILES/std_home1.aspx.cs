using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class std_home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string id = "21I0780"; // Assuming you have the variable containing the ID

            string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True"; // Replace with your actual connection string

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT S_NAME, DOB, Sem_id, STUDENT_ID  FROM student WHERE student_id = @InsId";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@InsId", id);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            TextBox4.Text = reader["S_NAME"].ToString();
                            TextBox1.Text = reader["DOB"].ToString();
                            TextBox6.Text = reader["Sem_id"].ToString();
                            TextBox7.Text = reader["STUDENT_ID"].ToString();

                        }
                    }
                }
            }
        }
    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}