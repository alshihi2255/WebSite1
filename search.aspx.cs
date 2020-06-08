using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class search : System.Web.UI.Page

{


    string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;";
    protected void Page_Load(object sender, EventArgs e)
    {
         
        using (SqlConnection Con = new SqlConnection(con))
        {
            Con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM issue where u_name like'%"+Label1.Text+"%' ", Con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            DataGrid1.DataSource = dt;
            
            DataGrid1.DataBind();

            
        }
      

      
    }

    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    using (SqlConnection Con = new SqlConnection(con))
    //    {
    //        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM user_tb where name like'%" +TextBox1.Text+"%'", Con);
    //        DataTable dt = new DataTable();
    //        adp.Fill(dt);
    //        DataGrid1.DataSource = dt;

    //        DataGrid1.DataBind();

    //    }
    //}

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addFrm.aspx");
    }
}






