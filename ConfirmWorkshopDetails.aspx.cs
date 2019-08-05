using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ConfirmWorkshopDetails : System.Web.UI.Page
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
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        int i = 1;
        String s = "Select * from Members where IOT=@IOT";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("IOT", i);
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        Datalist1.DataSource = ds;
        Datalist1.DataBind();
        da.Dispose();
        this.textbox1.Value = "indraneelp1997@gmail.com";
        this.textbox2.Value = "Indraneel";
        this.textbox3.Value = "Pal";
        this.textbox4.Value = "9830762671";
    }
    public int check()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Events where Email='" + Session["email"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        int flag = 0;
        while (dr.Read())
        {
            String fees = dr.GetValue(11).ToString();
            if (fees.Equals("Y"))
            {
                flag = 1;
            }
        }
        con.Close();
        return flag;
    }
    protected void button2_click(object sender, EventArgs e)
    {
        /*this.Page.ClientScript.RegisterStartupScript(
                                        this.GetType(),
                                        "msgbxConfirm",
                                        "Alert();",
                                                true);*/
        if (Session.IsNewSession != true && Session["firstname"] != null && Session["email"] != null)
        {
            if (check() == 1)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbxConfirm", "Alert1();", true);
            }
            else
            {
                string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                SqlConnection con = new SqlConnection(conn);
                con.Open();
                String s = "update Events set IOT=@IOT where Email=@Email ";
                SqlCommand cmd = new SqlCommand(s, con);
                cmd.Parameters.AddWithValue("IOT", "Y");
                cmd.Parameters.AddWithValue("Email", Session["email"].ToString());
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbxConfirm", "Alert2();", true);
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbxConfirm", "Alert3();", true);
                }
                con.Close();
            }
        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(
                                        this.GetType(),
                                        "msgbxConfirm",
                                        "Confirm();",
                                                true);
        }
    }
    protected void logout_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
        Response.Write("<script>location.replace('/Home.aspx')</script>");
    }
}