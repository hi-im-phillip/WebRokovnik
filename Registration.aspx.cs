using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string konekcijskiString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Filip\source\repos\WindowsFormsApp5\WindowsFormsApp5\SQL\Data.mdf;Integrated Security=True;Connect Timeout=30";
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (this.TextBox2.Text == string.Empty || this.TextBox3.Text == string.Empty || this.TextBox4.Text.Length < 5)
        {
            MsgBox("! Niste unijeli sve potrebne podatke ili lozinka nema dovoljan broj karaktera !", this.Page, this); 
        }
        else if (this.TextBox5.Text != this.TextBox6.Text)
        {
            MsgBox("! Lozinke se ne podudaraju !", this.Page, this);
        }
        else
        {
            using (SqlConnection con = new SqlConnection(konekcijskiString))
            {
                con.Open();
                string insert = "INSERT INTO db_securityadmin(Username, Ime, Prezime, Lozinka) VALUES ('" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + TextBox4.Text + "' , '" + TextBox5.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.ExecuteNonQuery();
                MsgBox("! Uspjesno ste se registrirali !", this.Page, this);
                con.Close();
                //Session["username"] = TextBox2.Text;
                // Response.Cookies["User"]["Value1"] = "iz registracije";
                // Response.Cookies["User"].Expires = DateTime.Now.AddDays(1d);
                Response.Redirect("~/Login.aspx");
            }
        }
    }

    public void MsgBox(String ex, Page pg, Object obj)
    {
        string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
        Type cstype = obj.GetType();
        ClientScriptManager cs = pg.ClientScript;
        cs.RegisterClientScriptBlock(cstype, s, s.ToString());
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}