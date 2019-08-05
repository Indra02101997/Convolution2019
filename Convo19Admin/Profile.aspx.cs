using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Convo19Admin_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Convo19Admin/UpdateDetails.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Convo19Admin/NewRegister.aspx");
    }
	protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Convo19Admin/CreateTeam.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Convo19Admin/ViewTeam.aspx");
    }
}