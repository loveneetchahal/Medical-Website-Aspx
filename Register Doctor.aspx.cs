using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class js_Register_Doctor : System.Web.UI.Page
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
        if (image.HasFile)
        {
            image.SaveAs(Server.MapPath("doctorimage/") + image.FileName.ToString());
            comm = new SqlCommand("insert into doctor values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m)", conn);
            comm.Parameters.AddWithValue("@a", name.Text);
            if (specialisation.SelectedItem.Text == "Others")
            {
                comm.Parameters.AddWithValue("@b", ospecialisation.Text);
            }
            else
            {
                comm.Parameters.AddWithValue("@b", specialisation.SelectedItem.Text);
            }
            comm.Parameters.AddWithValue("@c", contact.Text);
            comm.Parameters.AddWithValue("@d", email.Text);
            comm.Parameters.AddWithValue("@e", password.Text);
            if (qualification.SelectedItem.Text == "Others")
            {
                comm.Parameters.AddWithValue("@f", oqualification.Text);
            }
            else
            {
                comm.Parameters.AddWithValue("@f", qualification.SelectedItem.Text);
            }
            comm.Parameters.AddWithValue("@g", experience.Text);
            comm.Parameters.AddWithValue("@h", "doctorimage/" + image.FileName.ToString());
            comm.Parameters.AddWithValue("@i", address.Text);
            comm.Parameters.AddWithValue("@j", city.Text);
            comm.Parameters.AddWithValue("@k", state.Text);
            comm.Parameters.AddWithValue("@l", country.Text);
            comm.Parameters.AddWithValue("@m", pincode.Text);
            comm.ExecuteNonQuery();
            Label1.Text = "Successfully Registered";
            name.Text = "";
            contact.Text = "";
            email.Text = "";
            password.Text = "";
            experience.Text = "";
            address.Text = "";
            city.Text = "";
            state.Text = "";
            country.Text = "";
            pincode.Text = "";
        }
    }
    protected void disease_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}