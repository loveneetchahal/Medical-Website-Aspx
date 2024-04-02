using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Manage_Account : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        conn.Open();
    }
    protected void upload_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("select * from doctor where email=@a and password=@b", conn);
        comm.Parameters.AddWithValue("@a", Session["aname"].ToString());
        comm.Parameters.AddWithValue("@b", password.Text);
        object obj = comm.ExecuteScalar();
        if (obj != null)
        {
            comm = new SqlCommand("update doctor set password=@a where email=@b", conn);
            comm.Parameters.AddWithValue("@a", npassword.Text);
            comm.Parameters.AddWithValue("@b", Session["aname"].ToString());
            comm.ExecuteNonQuery();
            Label1.Text = "Password Updated";
        }
        else
        {
            Label1.Text = "Wrong Old Password";

        }
    }
}