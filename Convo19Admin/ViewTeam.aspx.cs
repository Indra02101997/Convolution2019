using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Convo19Admin_ViewTeam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            getdata();
        if (Session["admin"] == null)
        {
            Response.Redirect("/Convo19Admin/Default.aspx");
        }
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String events = this.Dropdown1.SelectedItem.ToString();
        String s = "";
        if (events.Equals("All"))
        {
            s = "Select * from Teams";
        }
        else
        {
            s = "Select * from Teams where Event = '" + events + "'";
        }
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        int c = 0;
        while (dr.Read())
        {
            c += 1;
        }
        this.count.InnerText = c.ToString();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String events=this.Dropdown1.SelectedItem.ToString();
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "";
        if (events.Equals("All"))
        {
            s = "Select * from Teams";
        }
        else
        {
            s = "Select * from Teams where Event = '" + events + "'";
        }
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Student.DataSource = ds;
        Student.DataBind();
        da.Dispose();
        con.Close();
        getdata();
    }
}