using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Web.Script.Services;
using System.IdentityModel;

public partial class Convo19Admin_CreateTeam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("/Convo19Admin/Default.aspx");
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCompletionList(string prefixText, int count)
    {
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            using (SqlCommand com = new SqlCommand())
            {
                com.CommandText = "select Email from Student where " + "Email like @Search + '%'";

                com.Parameters.AddWithValue("@Search", prefixText);
                com.Connection = con;
                con.Open();
                List<string> countryNames = new List<string>();
                using (SqlDataReader sdr = com.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        countryNames.Add(sdr["Email"].ToString());
                    }
                }
                return countryNames;
            }
			con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String events = this.Dropdown1.SelectedItem.ToString();
        String id = this.TextBox1.Text;
        String email1 = this.TextBox2.Text;
        String email2 = this.TextBox3.Text;
        String email3 = this.TextBox4.Text;
        String email4 = this.TextBox5.Text;
        String email5=this.TextBox9.Text;
        String college = this.TextBox6.Text;
        String year = this.TextBox7.Text;
        String phone = this.TextBox8.Text;
        String s = "insert into Teams(id,Email1,Email2,Email3,Email4,Email5,College,Year,Phone,Event) values(@id,@Email1,@Email2,@Email3,@Email4,@Email5,@College,@Year,@Phone,@Event)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("id", id.ToString());
        cmd.Parameters.AddWithValue("Email1", email1.ToString());
        cmd.Parameters.AddWithValue("Email2", email2.ToString());
        cmd.Parameters.AddWithValue("Email3", email3.ToString());
        cmd.Parameters.AddWithValue("Email4", email4.ToString());
        cmd.Parameters.AddWithValue("Email5", email5.ToString());
        cmd.Parameters.AddWithValue("College", college.ToString());
        cmd.Parameters.AddWithValue("Year", year.ToString());
        cmd.Parameters.AddWithValue("Phone", phone.ToString());
        cmd.Parameters.AddWithValue("Event", events.ToString());
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            Response.Write("<script> alert('Team created successfully')</script>");
            return;
        }
		con.Close();
    }
}