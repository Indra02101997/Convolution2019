using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TechHuntTeam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        getdata();
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
    public void getdata()
    {
        /*string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        int i = 1;
        String s = "Select * from Members where Techhunt=@Techhunt";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Techhunt", i);
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        Datalist1.DataSource = ds;
        Datalist1.DataBind();
        da.Dispose();*/
    }
    protected void logout_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
        Response.Write("<script>location.replace('/Home.aspx')</script>");
    }
}