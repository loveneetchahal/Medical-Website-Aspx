using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Dynamic;

public partial class Get_Appointment : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        conn.Open();
        if (!IsPostBack)
        {
            time.Items.Clear();
            if (Request["doctor"] != null)
            {
                comm = new SqlCommand("select shift from doctor_shift where doctor=@a", conn);
                comm.Parameters.AddWithValue("@a", Request["doctor"].ToString());
                object obj = comm.ExecuteScalar();
                if (obj != null)
                {
                    comm = new SqlCommand("select start, e_time from shift where shift=@a", conn);
                    comm.Parameters.AddWithValue("@a", obj.ToString());
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {

                        int hi = Convert.ToInt32(reader[0].ToString().Split(':')[0]);
                        int mi = Convert.ToInt32(reader[0].ToString().Split(':')[1]);
                        int he = Convert.ToInt32(reader[1].ToString().Split(':')[0]);
                        int me = Convert.ToInt32(reader[1].ToString().Split(':')[1]);

                        for (int h = hi; h < he; h++)
                        {

                            for (int m = mi; m < 60; m += 15)
                            {
                                comm = new SqlCommand("select * from appointment where time=@a", conn);
                                comm.Parameters.AddWithValue("@a", h.ToString() + ":" + m.ToString());
                                obj = comm.ExecuteScalar();
                                if (obj == null)
                                {
                                    if (m.ToString() == "0")
                                    {
                                        time.Items.Add(h.ToString() + ":0" + m.ToString());
                                    }
                                    else
                                    {
                                        time.Items.Add(h.ToString() + ":" + m.ToString());
                                    }
                                }
                            }
                        }
                    }
                    
                }

            }
            int dayex = DateTime.Now.Day + 3;
            for (int day = DateTime.Now.Day; day <= dayex; day++)
            {
                date.Items.Add(day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString());
            }
        }
        
    }
    protected void disease_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void doctor_SelectedIndexChanged(object sender, EventArgs e)
    {
        time.Items.Clear();

        comm = new SqlCommand("select shift from doctor_shift where doctor=@a", conn);
        comm.Parameters.AddWithValue("@a", doctor.SelectedValue.ToString());
        object obj = comm.ExecuteScalar();
        if (obj != null)
        {
            comm = new SqlCommand("select start, e_time from shift where shift=@a", conn);
            comm.Parameters.AddWithValue("@a", obj.ToString());
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                
                int hi = Convert.ToInt32(reader[0].ToString().Split(':')[0]);
                int mi = Convert.ToInt32(reader[0].ToString().Split(':')[1]);
                int he = Convert.ToInt32(reader[1].ToString().Split(':')[0]);
                int me = Convert.ToInt32(reader[1].ToString().Split(':')[1]);
                
                for (int h = hi; h < he; h++)
                {
                    
                    for (int m = mi; m < 60; m += 15)
                    {
                        comm = new SqlCommand("select * from appointment where time=@a and date=@b", conn);
                        comm.Parameters.AddWithValue("@b", date.SelectedItem.Text);
                        comm.Parameters.AddWithValue("@a", h.ToString() + ":" + m.ToString());
                        obj = comm.ExecuteScalar();
                        if (obj == null)
                        {
                            if (m.ToString() == "0")
                            {
                                time.Items.Add(h.ToString() + ":0" + m.ToString());
                            }
                            else
                            {
                                time.Items.Add(h.ToString() + ":" + m.ToString());
                            }
                        }
                    }
                }
            }

        }
    }
    protected void time_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void upload_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("insert into appointment values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m)", conn);
        comm.Parameters.AddWithValue("@a", name.Text);
        if (disease.SelectedItem.Text == "Others")
        {
            comm.Parameters.AddWithValue("@b", other.Text);
        }
        else
        {
            comm.Parameters.AddWithValue("@b", disease.SelectedItem.Text);
        }
        
        comm.Parameters.AddWithValue("@c", doctor.SelectedItem.Text);
        comm.Parameters.AddWithValue("@d", time.SelectedItem.Text);
        comm.Parameters.AddWithValue("@e", contact.Text);
        comm.Parameters.AddWithValue("@f", email.Text);
        comm.Parameters.AddWithValue("@g", password.Text);
        comm.Parameters.AddWithValue("@h", address.Text);
        comm.Parameters.AddWithValue("@i", city.Text);
        comm.Parameters.AddWithValue("@j", state.Text);
        comm.Parameters.AddWithValue("@k", country.Text);
        comm.Parameters.AddWithValue("@l", pincode.Text);
        comm.Parameters.AddWithValue("@m", date.SelectedItem.Text);
        comm.ExecuteNonQuery();
        Response.Write("<script>alert('Your appointment submitted successfully')</script>");
        Label1.Text = "Your Appointment Submitted Successfully";
        name.Text = "";
        other.Text = "";
        contact.Text = "";
        email.Text = "";
        password.Text = "";
        address.Text = "";
        city.Text = "";
        state.Text = "";
        country.Text = "";
        pincode.Text = "";
    }
    protected void doctor_DataBound(object sender, EventArgs e)
    {
        if (Request["doctor"] != null)
        {
            doctor.SelectedValue = Request["doctor"].ToString();
        }
        comm = new SqlCommand("select shift from doctor_shift where doctor=@a", conn);
        comm.Parameters.AddWithValue("@a", doctor.SelectedItem.Text);
        object obj = comm.ExecuteScalar();
        if (obj != null)
        {
            comm = new SqlCommand("select start, e_time from shift where shift=@a", conn);
            comm.Parameters.AddWithValue("@a", obj.ToString());
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {

                int hi = Convert.ToInt32(reader[0].ToString().Split(':')[0]);
                int mi = Convert.ToInt32(reader[0].ToString().Split(':')[1]);
                int he = Convert.ToInt32(reader[1].ToString().Split(':')[0]);
                int me = Convert.ToInt32(reader[1].ToString().Split(':')[1]);

                for (int h = hi; h < he; h++)
                {

                    for (int m = mi; m < 60; m += 15)
                    {
                        comm = new SqlCommand("select * from appointment where time=@a", conn);
                        comm.Parameters.AddWithValue("@a", h.ToString() + ":" + m.ToString());
                        obj = comm.ExecuteScalar();
                        if (obj == null)
                        {
                            if (m.ToString() == "0")
                            {
                                time.Items.Add(h.ToString() + ":0" + m.ToString());
                            }
                            else
                            {
                                time.Items.Add(h.ToString() + ":" + m.ToString());
                            }
                        }
                    }
                }
            }

        }
    }
}