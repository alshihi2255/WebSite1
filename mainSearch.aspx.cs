using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class mainSearch : System.Web.UI.Page

{


    string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;";
    protected void Page_Load(object sender, EventArgs e)
    {

        using (SqlConnection Con = new SqlConnection(con))
        {
            Con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM user_tb", Con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            DataGrid1.DataSource = dt;

            DataGrid1.DataBind();


        }


        //{
        //    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from tbl_data", con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);

        //    sda.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        dataGrid1.ItemsSource = ds.Tables[0].DefaultView;
        //    }
        //    con.Close();
        //}
    }

  



    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        using (SqlConnection Con = new SqlConnection(con))
        {
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM user_tb where name like'%" + TextBox1.Text + "%'", Con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            DataGrid1.DataSource = dt;

            DataGrid1.DataBind();

        }
    }
}






