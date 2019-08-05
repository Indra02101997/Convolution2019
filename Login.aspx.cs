using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["newregister"] != null)
        {
            this.Page.ClientScript.RegisterStartupScript(
                                        this.GetType(),
                                        "msgbxConfirm",
                                        "Confirm();",
                                                true);
            Session["newregister"] = null;
        }
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String email = this.email.Value.ToString();
        String password = this.pw.Value.ToString();
        String s = "Select * from Student where Email='" + email + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string pass = dr.GetValue(10).ToString();
            if (password != pass)
            {
                Response.Write("<script>alert('Password Not Matching Try Again!')</script>");
                return;
            }
            else
            {
                Session["firstname"] = dr.GetValue(1).ToString();
                Session["lastname"] = dr.GetValue(2).ToString();
                Session["email"] = dr.GetValue(0).ToString();
                Session["phone"] = dr.GetValue(6).ToString();
                Session["college"] = dr.GetValue(4).ToString();
                Session["address"] = dr.GetValue(3).ToString();
                Response.Write("<script>location.replace('/Home.aspx')</script>");
            }
        }
    }
}