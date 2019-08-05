using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Convo19Admin_NewRegister : System.Web.UI.Page
{
    String code = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Literal1.Visible = false;
		if (Session["admin"] == null)
        {
            Response.Redirect("/Convo19Admin/Default.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String email = this.TextBox2.Text;
        String firstname = this.TextBox3.Text;
        String lastname = this.TextBox4.Text;
        String college = this.TextBox5.Text;
        String year = this.TextBox6.Text;
        String phoneno = this.TextBox7.Text;
        String course = this.TextBox8.Text;
        String address = this.TextBox9.Text;
        Random random = new Random();
        code = (Convert.ToString(random.Next(10000, 20000)));
        code = "Convo19ST-" + code.ToString();
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "insert into Student(Email,FirstName,LastName,Password,Address,College,Course,Year,PhoneNo,Code) values(@Email,@FirstName,@LastName,@Password,@Address,@College,@Course,@Year,@PhoneNo,@Code)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Email", email);
        cmd.Parameters.AddWithValue("FirstName", firstname);
        cmd.Parameters.AddWithValue("LastName", lastname);
        cmd.Parameters.AddWithValue("Password", "1234");
        cmd.Parameters.AddWithValue("Address", address);
        cmd.Parameters.AddWithValue("College", college);
        cmd.Parameters.AddWithValue("Course", course);
        cmd.Parameters.AddWithValue("Year", year);
        cmd.Parameters.AddWithValue("PhoneNo", phoneno);
        cmd.Parameters.AddWithValue("Code", code);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            fillevents(email, code);
        }
		con.Close();
    }
    public void fillevents(String email, String code)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String circuistic = "";
        String sparkhack = "";
        String algo = "";
        String decisia = "";
        String papier = "";
        String quiz = "";
        String techhunt = "";
        String aboltabol = "";
        String PD = "";
        String photo = "";
        if (this.RadioButton1.Checked == true)
        {
            circuistic = "Y";
        }
        if (this.RadioButton2.Checked == true)
        {
            sparkhack = "Y";
        }
        if (this.RadioButton3.Checked == true)
        {
            algo = "Y";
        }
        if (this.RadioButton4.Checked == true)
        {
            decisia = "Y";
        }
        if (this.RadioButton5.Checked == true)
        {
            papier = "Y";
        }
        if (this.RadioButton6.Checked == true)
        {
            quiz = "Y";
        }
        if (this.RadioButton7.Checked == true)
        {
            techhunt = "Y";
        }
        if (this.RadioButton8.Checked == true)
        {
            aboltabol = "Y";
        }
        if (this.RadioButton9.Checked == true)
        {
            PD = "Y";
        }
        if (this.RadioButton10.Checked == true)
        {
            photo = "Y";
        }
        String s = "insert into Events(Email,Circuistic,Sparkhack,Algomaniac,Decisia,Papier,Inquizzitive,Techhunt,Aboltabol,PD,Photography,Code) values(@Email,@Circuistic,@Sparkhack,@Algomaniac,@Decisia,@Papier,@Inquizzitive,@Techhunt,@Aboltabol,@PD,@Photography,@Code)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Email", email.ToString());
        cmd.Parameters.AddWithValue("Circuistic", circuistic.ToString());
        cmd.Parameters.AddWithValue("Sparkhack", sparkhack.ToString());
        cmd.Parameters.AddWithValue("Algomaniac", algo.ToString());
        cmd.Parameters.AddWithValue("Decisia", decisia.ToString());
        cmd.Parameters.AddWithValue("Papier", papier.ToString());
        cmd.Parameters.AddWithValue("Inquizzitive", quiz.ToString());
        cmd.Parameters.AddWithValue("Techhunt", techhunt.ToString());
        cmd.Parameters.AddWithValue("Aboltabol", aboltabol.ToString());
        cmd.Parameters.AddWithValue("PD", PD.ToString());
        cmd.Parameters.AddWithValue("Photography", photo.ToString());
        cmd.Parameters.AddWithValue("Code", code.ToString());
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            this.Literal1.Text = "You have been successfully registered. Your code is " + code.ToString();
            this.Literal1.Visible = true;
            return;
        }
        con.Close();
        return;
    }
}