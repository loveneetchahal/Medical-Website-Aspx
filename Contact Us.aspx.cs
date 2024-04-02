using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact_Us : System.Web.UI.Page
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
        comm = new SqlCommand("insert into contact values(@a,@b,@c,@d)", conn);
        comm.Parameters.AddWithValue("@a", name.Text);
        comm.Parameters.AddWithValue("@b", email.Text);
        comm.Parameters.AddWithValue("@c", subject.Text);
        comm.Parameters.AddWithValue("@d", message.Text);
        comm.ExecuteNonQuery();
        Label1.Text = "Successfully Submitted";
        name.Text = "";
        email.Text = "";
        subject.Text = "";
        message.Text = "";
    }
}