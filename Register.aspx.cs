using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Register : System.Web.UI.Page
{
    String code = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void button1_click(object sender, EventArgs e)
    {
        Random random = new Random();
        code = (Convert.ToString(random.Next(10000, 20000)));
        code = "Convo19ST-" + code.ToString();
        String email = this.textbox1.Value.ToString();
        String firstname = this.textbox2.Value.ToString();
        String lastname = this.textbox3.Value.ToString();
        String password = this.textbox4.Value.ToString();
        String address = this.textbox5.Value.ToString();
        String college = this.textbox6.Value.ToString();
        String course = this.textbox7.Value.ToString();
        String year = this.textbox8.Value.ToString();
        String phone = this.textbox9.Value.ToString();
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "insert into Student(Email,FirstName,LastName,Password,Address,College,Course,Year,PhoneNo,Code) values(@Email,@FirstName,@LastName,@Password,@Address,@College,@Course,@Year,@PhoneNo,@Code)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Email", email);
        cmd.Parameters.AddWithValue("FirstName", firstname);
        cmd.Parameters.AddWithValue("LastName", lastname);
        cmd.Parameters.AddWithValue("Password", password);
        cmd.Parameters.AddWithValue("Address", address);
        cmd.Parameters.AddWithValue("College", college);
        cmd.Parameters.AddWithValue("Course", course);
        cmd.Parameters.AddWithValue("Year", year);
        cmd.Parameters.AddWithValue("PhoneNo", phone);
        cmd.Parameters.AddWithValue("Code", code);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            fillevents(email,code);
            Session["newregister"] = "ok";
            Response.Redirect("/Login.aspx");
        }
        else
        {
            Response.Write("<script>alert('Not Registered Successfully')</script>");
            return;
        }
        con.Close();      
    }
    public void fillevents(String email, String code)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "insert into Events(Email,Code) values(@Email,@Code)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Email", email.ToString());
        cmd.Parameters.AddWithValue("Code", code.ToString());
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return;
    }
    protected void button2_click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}