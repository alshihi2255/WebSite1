using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.IO;


public partial class login : System.Web.UI.Page
{
    static string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    SqlConnection con = new SqlConnection(s);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtno.Focus();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //{
        //    String EncryptionKey = "MAKV2SPBNI99212";
        //    Byte[] clearBytes = Encoding.Unicode.GetBytes(txtpass.Text);
        //    using (Aes encryptor = Aes.Create())
        //    {
        //        Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new Byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
        //        encryptor.Key = pdb.GetBytes(32);
        //        encryptor.IV = pdb.GetBytes(16);
        //        using (MemoryStream ms = new MemoryStream())
        //        {
        //            using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
        //            {
        //                cs.Write(clearBytes, 0, clearBytes.Length);
        //                cs.Close();
        //            }
        //            txtpass.Text = Convert.ToBase64String(ms.ToArray());
        //        }
        //    }

        //}


        con.Open();
        cmd.Connection = con;
        cmd.CommandText = " select * from user_tb where name='" + txtno.Text.ToString() + "' and age='" + txtpass.Text.ToString() + "'";
        da.SelectCommand = cmd;
        dr = cmd.ExecuteReader();




        if (dr.Read())
        {


            Label4.Text = dr["name"].ToString();
            Session["name"] = Label4.Text.ToString();


            Label5.Text = dr["u_Id"].ToString();
            Session["u_Id"] = Label5.Text.ToString();


            Response.Redirect("addFrm.aspx");


        }
        else
        {

            txtno.Text = "";
            txtpass.Text = "";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Username or Password wrong!! .');window.location ='login.aspx';", true);

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}