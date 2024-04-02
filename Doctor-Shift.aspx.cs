using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Doctor_Shift : System.Web.UI.Page
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
        comm = new SqlCommand("insert into doctor_shift values(@a,@b)", conn);
        comm.Parameters.AddWithValue("@a", doctor.SelectedItem.Text);
        comm.Parameters.AddWithValue("@b", shift.SelectedItem.Text);
        comm.ExecuteNonQuery();
        Label1.Text = "Successfully Added";
    }
    protected void disease_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}