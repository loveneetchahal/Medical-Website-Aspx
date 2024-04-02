using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Show_Appointments : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        conn.Open();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList doctor;
        foreach (Control c in GridView1.SelectedRow.Cells[10].Controls)
        {
            if (c is DropDownList)
            {
                doctor = (DropDownList)c;
                SqlCommand comm = new SqlCommand("update appointment set doctor='" + doctor.SelectedItem.Text + "' where id=" + GridView1.SelectedRow.Cells[0].Text, conn);
                comm.ExecuteNonQuery();
                GridView1.DataBind();
                Response.Write("<script>alert('Appointment of " + GridView1.SelectedRow.Cells[9].Text + " has been transfered to " + doctor.SelectedItem.Text + "');</script>");
            }
        }
    }
}