using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Convo19Admin_Inquizzitive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getcount();
            refreshdata();
        }
        if (Session["admin"] == null)
        {
            Response.Redirect("/Convo19Admin/Default.aspx");
        }
    }
    public void getcount()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String ans = "Y";
        String s = "SELECT Student.Email,Student.FirstName,Student.LastName,Student.College,Student.Year,Student.PhoneNo FROM  Events INNER JOIN Student ON Student.Email = Events.Email WHERE Events.Inquizzitive = '" + ans + "'";
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
    public void refreshdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String ans = "Y";
        String s = "SELECT Student.Email,Student.FirstName,Student.LastName,Student.College,Student.Year,Student.PhoneNo FROM  Events INNER JOIN Student ON Student.Email = Events.Email WHERE Events.Inquizzitive = '" + ans + "'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Student.DataSource = ds;
        Student.DataBind();
        da.Dispose();
        con.Close();
    }
    protected void Home_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Student.PageIndex = e.NewPageIndex;
        refreshdata();
    }
	protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        String ans = "Y";
        String s = "SELECT Student.Email,Student.FirstName,Student.LastName,Student.College,Student.Year,Student.PhoneNo,Student.Code,Student.Course FROM  Events INNER JOIN Student ON Student.Email = Events.Email WHERE Events.Inquizzitive = '" + ans + "'";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(s))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);

                        //Build the Text file data.
                        string txt = string.Empty;

                        foreach (DataRow row in dt.Rows)
                        {
                            txt += row[0].ToString() + "\t\t";
                            //Add new line.
                            txt += "\r\n";
                        }

                        //Download the Text file.
                        Response.Clear();
                        Response.Buffer = true;
                        Response.AddHeader("content-disposition", "attachment;filename=InquizzitiveEmail.txt");
                        Response.Charset = "";
                        Response.ContentType = "application/text";
                        Response.Output.Write(txt);
                        Response.Flush();
                        Response.End();
                    }
					sda.Dispose();
                }
            }
			con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        String ans = "Y";
        String s = "SELECT Student.Email,Student.FirstName,Student.LastName,Student.College,Student.Year,Student.PhoneNo,Student.Code,Student.Course FROM  Events INNER JOIN Student ON Student.Email = Events.Email WHERE Events.Inquizzitive = '" + ans + "'";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(s))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);

                        //Build the Text file data.
                        string txt = string.Empty;

                        foreach (DataColumn column in dt.Columns)
                        {
                            //Add the Header row for Text file.
                            txt += column.ColumnName.ToString().Replace(",", ";") + ',';
                        }

                        //Add new line.
                        txt += "\r\n";

                        foreach (DataRow row in dt.Rows)
                        {
                            foreach (DataColumn column in dt.Columns)
                            {
                                //Add the Data rows.
                                txt += row[column.ColumnName].ToString().Replace(",", ";") + ',';
                            }

                            //Add new line.
                            txt += "\r\n";
                        }

                        //Download the Text file.
                        Response.Clear();
                        Response.Buffer = true;
                        Response.AddHeader("content-disposition", "attachment;filename=InquizzitiveData.csv");
                        Response.Charset = "";
                        Response.ContentType = "application/csv";
                        Response.Output.Write(txt);
                        Response.Flush();
                        Response.End();
                    }
					sda.Dispose();
                }
            }
			con.Close();
        }
    }
}