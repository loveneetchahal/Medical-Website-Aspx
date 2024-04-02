using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Treatment : System.Web.UI.Page
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
        comm = new SqlCommand("insert into treatment values(@a,@b)", conn);
        comm.Parameters.AddWithValue("@a", disease.SelectedItem.Text);
        comm.Parameters.AddWithValue("@b", treatment.Text);
        comm.ExecuteNonQuery();
        Label1.Text = "Successfully Uploaded";
        treatment.Text = "";
    }
    protected void disease_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}