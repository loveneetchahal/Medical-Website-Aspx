using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Login : System.Web.UI.Page
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
        comm = new SqlCommand("select * from admin where email=@a and password=@b", conn);
        comm.Parameters.AddWithValue("@a", user.Text);
        comm.Parameters.AddWithValue("@b", password.Text);
        object obj = comm.ExecuteScalar();
        if (obj != null)
        {
            Session["aname"] = user.Text;
            Response.Redirect("admin.aspx");
        }
        else
        {
            Label1.Text = "Invalid Username/Password";

        }
    }
}