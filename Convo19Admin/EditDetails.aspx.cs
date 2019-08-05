using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Convo19Admin_EditDetails : System.Web.UI.Page
{
    String email = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getdata();
        }
        if (Session["admin"] == null)
        {
            Response.Redirect("/Convo19Admin/Default.aspx");
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        email = Request.QueryString.Get("pid").ToString();
        if (email.ToString() == String.Empty)
        {
            Response.Redirect("/Convo19Admin/UpdateDetails.aspx");
        }
        getdata();
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Student where Email = @Email";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Email", email);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            this.TextBox2.Text = dr.GetValue(7).ToString();
            this.TextBox3.Text = dr.GetValue(1).ToString();
            this.TextBox4.Text = dr.GetValue(2).ToString();
            this.TextBox5.Text = dr.GetValue(4).ToString();
            this.TextBox6.Text = dr.GetValue(5).ToString();
            this.TextBox7.Text = dr.GetValue(6).ToString();
            this.TextBox8.Text = dr.GetValue(9).ToString();
            this.TextBox9.Text = dr.GetValue(3).ToString();
        }
        con.Close();
        getevents();
    }
    public void getevents()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Events where Email = @Email";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Email", email);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.GetValue(1).ToString().Equals("Y"))
            {
                this.RadioButton2.Checked = true;
            }
            else
            {
                this.RadioButton2.Checked = false;
            }
            if (dr.GetValue(2).ToString().Equals("Y"))
            {
                this.RadioButton3.Checked = true;
            }
            else
            {
                this.RadioButton3.Checked = false;
            }
            if (dr.GetValue(3).ToString().Equals("Y"))
            {
                this.RadioButton4.Checked = true;
            }
            else
            {
                this.RadioButton4.Checked = false;
            }
            if (dr.GetValue(4).ToString().Equals("Y"))
            {
                this.RadioButton5.Checked = true;
            }
            else
            {
                this.RadioButton5.Checked = false;
            }
            if (dr.GetValue(5).ToString().Equals("Y"))
            {
                this.RadioButton6.Checked = true;
            }
            else
            {
                this.RadioButton6.Checked = false;
            }
            if (dr.GetValue(6).ToString().Equals("Y"))
            {
                this.RadioButton7.Checked = true;
            }
            else
            {
                this.RadioButton7.Checked = false;
            }
            if (dr.GetValue(7).ToString().Equals("Y"))
            {
                this.RadioButton8.Checked = true;
            }
            else
            {
                this.RadioButton8.Checked = false;
            }
            if (dr.GetValue(8).ToString().Equals("Y"))
            {
                this.RadioButton9.Checked = true;
            }
            else
            {
                this.RadioButton9.Checked = false;
            }
            if (dr.GetValue(9).ToString().Equals("Y"))
            {
                this.RadioButton10.Checked = true;
            }
            else
            {
                this.RadioButton10.Checked = false;
            }
            if (dr.GetValue(10).ToString().Equals("Y"))
            {
                this.RadioButton1.Checked = true;
            }
            else
            {
                this.RadioButton1.Checked = false;
            }
        }
		con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String firstname = this.TextBox3.Text;
        String lastname = this.TextBox4.Text;
        String college = this.TextBox5.Text;
        String year = this.TextBox6.Text;
        String phone = this.TextBox7.Text;
        String course = this.TextBox8.Text;
        String address=this.TextBox9.Text;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "update Student set FirstName=@FirstName,LastName=@LastName,College=@College,Year=@Year,PhoneNo=@PhoneNo,Course=@Course,Address=@Address where Email=@Email";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("FirstName", firstname.ToString());
        cmd.Parameters.AddWithValue("LastName", lastname.ToString());
        cmd.Parameters.AddWithValue("College", college.ToString());
        cmd.Parameters.AddWithValue("Year", year.ToString());
        cmd.Parameters.AddWithValue("PhoneNo", phone.ToString());
        cmd.Parameters.AddWithValue("Course", course.ToString());
        cmd.Parameters.AddWithValue("Address", address.ToString());
        cmd.Parameters.AddWithValue("Email", email.ToString());
        int i = cmd.ExecuteNonQuery();
        con.Close();
        updatevents();
    }
    public void updatevents()
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
        String s = "update Events set Circuistic=@Circuistic,Sparkhack=@Sparkhack,Algomaniac=@Algomaniac,Decisia=@Decisia,Papier=@Papier,Inquizzitive=@Inquizzitive,Techhunt=@Techhunt,Aboltabol=@Aboltabol,PD=@PD,Photography=@Photography where Email=@Email";
        SqlCommand cmd = new SqlCommand(s, con);
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
        cmd.Parameters.AddWithValue("Email", email.ToString());
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            Response.Redirect("/Convo19Admin/UpdateDetails.aspx");
        }
		con.Close();

    }
}