using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Convo19Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button1_click(object sender, EventArgs e)
    {
        String username = "Convo19jueeentry";
        String password = "convojuee2019admin";
        String first = this.textbox1.Value.ToString();
        String sec = this.textbox2.Value.ToString();
        if (first.Equals(username) && sec.Equals(password))
        {
            Session["admin"] = "admin";
            Response.Redirect("~/Convo19Admin/Home.aspx");
        }
        else
        {
            Response.Write("<script> alert('Invalid username or password')</script>");
            return;
        }
    }
}