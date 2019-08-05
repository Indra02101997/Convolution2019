using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session.IsNewSession != true && Session["firstname"] != null && Session["email"] != null)
        {
            this.linkbutton1.Visible = true;
            this.login.Visible = false;
        }
        else
        {
            this.linkbutton1.Visible = false;
            this.login.Visible = true;
        }
    }
    protected void logout_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
        Response.Write("<script>location.replace('/Home.aspx')</script>");
    }
}