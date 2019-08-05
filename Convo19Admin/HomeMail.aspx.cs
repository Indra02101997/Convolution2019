using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;
public partial class Convo19Admin_HomeMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("/Convo19Admin/Default.aspx");
        }
    }
    protected void button1_click(object sender, EventArgs e)
    {
        string value = this.service.Items[service.SelectedIndex].Value.ToString();
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String ans = "Y";
        String s = "";
        if (value.Equals("All"))
        {
            s = "Select * from Events";
        }
        else if (value.Equals("Circuistic"))
        {
            s = "Select * from Events where Circuistic = '" + ans + "'";
        }
        else if (value.Equals("Sparkhack"))
        {
            s = "Select * from Events where Sparkhack = '" + ans + "'";
        }
        else if (value.Equals("Algomaniac"))
        {
            s = "Select * from Events where Algomaniac = '" + ans + "'";
        }
        else if (value.Equals("Decisia"))
        {
            s = "Select * from Events where Decisia = '" + ans + "'";
        }
        else if (value.Equals("Papier"))
        {
            s = "Select * from Events where Papier = '" + ans + "'";
        }
        else if (value.Equals("Inquizzitive"))
        {
            s = "Select * from Events where Inquizzitive = '" + ans + "'";
        }
        else if (value.Equals("Aboltabol"))
        {
            s = "Select * from Events where Aboltabol = '" + ans + "'";
        }
        else if (value.Equals("Techhunt"))
        {
            s = "Select * from Events where Techhunt = '" + ans + "'";
        }
        else if (value.Equals("PD"))
        {
            s = "Select * from Events where PD = '" + ans + "'";
        }
        else if (value.Equals("Photography"))
        {
            s = "Select * from Events where Photography = '" + ans + "'";
        }
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            String mailaddress = dr.GetValue(0).ToString();
            try
            {
                sendmail(mailaddress);
            }
            catch (Exception ex)
            {
                
            }
        }
        con.Close();
        Response.Write("<script> alert('Mail sent successfully')</script>");

    }
    public void sendmail(String mailaddress)
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(new MailAddress(mailaddress));
        mail.From = new MailAddress("convolutionjuee2019@gmail.com");
        mail.Subject = this.Subject.Value.ToString();
        String Body = this.message.Value.ToString();
        mail.IsBodyHtml = true;
        mail.Body = Body;
		mail.Priority = MailPriority.High;
        SmtpClient client = new SmtpClient("relay-hosting.secureserver.net", 25);
        client.Port = 25;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.UseDefaultCredentials = false;
        client.Credentials = new System.Net.NetworkCredential("convolutionjuee2019@gmail.com", "ipppcasasts@2019");
        client.Send(mail);
    }
}