﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Shift_Updates : System.Web.UI.Page
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
        comm = new SqlCommand("insert into shift values(@a,@b,@c)", conn);
        comm.Parameters.AddWithValue("@a", shift.Text);
        comm.Parameters.AddWithValue("@b", start.Text);
        comm.Parameters.AddWithValue("@c", end.Text);
        comm.ExecuteNonQuery();
        Label1.Text = "Successfully Added";
        shift.Text = "";
        start.Text = "";
        end.Text = "";
    }
}