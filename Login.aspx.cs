using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    string konekcijskiString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Filip\source\repos\WindowsFormsApp5\WindowsFormsApp5\SQL\Data.mdf;Integrated Security=True;Connect Timeout=30";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(konekcijskiString);
        SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From db_securityadmin where Username='" + TextBox2.Text + "' and Lozinka = '" + TextBox3.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows[0][0].ToString() == "1")
        {
            Session["username"] = TextBox2.Text;
            Response.Redirect("~/Main.aspx");
        } else
        {
            MsgBox("! Korisnicko ime ili lozinka nisu tocni !", this.Page, this);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Registration.aspx");
    }

    public void MsgBox(String ex, Page pg, Object obj)
    {
        string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
        Type cstype = obj.GetType();
        ClientScriptManager cs = pg.ClientScript;
        cs.RegisterClientScriptBlock(cstype, s, s.ToString());
    }
   
    public string getUsername()
    {
        return TextBox2.Text;
    }
    
}