using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addFrm : System.Web.UI.Page
{
    
  
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text =  Session["name"].ToString() ;
        //Label1.Text = "hello";
    }

    //protected void DeleteButton_Click(object sender, EventArgs e)
    //{
    //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('one record is deleted!! .');window.location ='addFrm.aspx';", true);
    //}
   
   //la Text = Session["f_name"].ToString();

        

    protected void InsertButton_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('one record is added!! .');window.location ='addFrm.aspx';", true);

        
    }

    protected void DeleteButton_Click1(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('one record is deleted!! .');window.location ='addFrm.aspx';", true);
    }
}