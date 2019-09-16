using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    string konekcijskiString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Filip\source\repos\WindowsFormsApp5\WindowsFormsApp5\SQL\Data.mdf;Integrated Security=True;Connect Timeout=30";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        
        Label6.Text = (string)Session["username"];
        string Username = Label6.Text;
        
        //Label6.Text = Session["username"].ToString();
        // Label6.Text = Request.Cookies["User"]["Value1"].ToString();

        if (!Page.IsPostBack)
        {
            FillCombo(Username);
            DropDownList1.DataBind();
         //   DropDownList2.DataBind();
        }
    }

    private void FillCombo(string Username)
    {
        Username = Label6.Text;
        //spajanje na bazu
        using (SqlConnection conn = new SqlConnection(konekcijskiString))
        {
            //if (DropDownList1.Items.Count > 0)
           // {
            //    DropDownList1.Items.Clear();
           // }
            //else
         //   {
                //sql upit      
                string query = "select * from KORISNICI WHERE IdKorisnik = '" + Username + "'  ;";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader myReader;
            int i = 0;
            try
                {
                    conn.Open();
                    // cmd.ExecuteNonQuery();
                    myReader = cmd.ExecuteReader();

                    while (myReader.Read())
                    {
                        if (i <= 2) { 
                        // u nazivSql se storaju svi podaci iz 1. stupca 
                        string nazivSql = myReader.GetString(1);
                        //string nazivSql ce se dodati u comboBox a posto smo u while loopu, dodati ce ih od prvog do zadnjeg
                        DropDownList1.Items.Add(nazivSql);
                    }
                    i++;
                    }

                }
                catch (Exception ex)
                {
                    MsgBox(ex.ToString(), this.Page, this);
                }
                finally
                {
                    conn.Close();
                }
            //}
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text == string.Empty)
        {
            MsgBox("! Unesite naziv dogadaja !", this.Page, this);
        }
        else
        {
            using (SqlConnection con = new SqlConnection(konekcijskiString)) { 
        
        string query = "UPDATE KORISNICI SET Naziv = '" + this.TextBox1.Text +
                    "' , Email = '" + this.TextBox2.Text +
                    "' , Adresa = '" + this.TextBox3.Text +
                     "' , IdKorisnik = '" + Label6.Text +
                    // "' ,  Datum = '" + this.dateTimePicker1.Value.Date.ToString("yyyy/MM/dd") +
                     "' ,  Datum = '" + this.TextBox4.Text +
                    "' , Informacije = '" + this.TextBox5.Text +
                    "' WHERE Naziv = '" + this.TextBox1.Text + "' ;";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader myReader;
                try
                {
                    con.Open();
                    myReader = cmd.ExecuteReader();
                    MsgBox("Uspješno uneseni podaci!", this.Page, this);
                    while (myReader.Read())
                    {

                    }

                } catch (Exception ex)
                {
                    MsgBox("Neuspješno uneseni podaci!", this.Page, this);
                }
                finally
                {
                    DropDownList1.DataBind();
                    DropDownList1.Attributes.Add("Size", "2");
                    con.Close();
                }
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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

      //  DropDownList1.Attributes.Add("Size", "2");

        //  DropDownList1.Items.Clear();
        using (SqlConnection conn = new SqlConnection(konekcijskiString))
            {
                string query = "SELECT * FROM KORISNICI WHERE Naziv = '" + DropDownList1.Text + "' ;";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader myReader;

            //      if (DropDownList1.Items.Count > 0)
            //    {
            //      DropDownList1.Items.Insert(0, "All");
            //    DropDownList1.Items[0].Value = "";
            //   DropDownList1.SelectedIndex = 0;
            //  }


            try
            {
                conn.Open();
                myReader = cmd.ExecuteReader();


                while (myReader.Read())
                {
                    string nazivSql = myReader.GetString(1);
                    string emailSql = myReader.GetString(2);
                    string adreasSql = myReader.GetString(3);
                    string datumSql = myReader.GetDateTime(4).ToString();
                    string informacijeSql = myReader.GetString(5);

                    TextBox1.Text = nazivSql;
                    TextBox2.Text = emailSql;
                    TextBox3.Text = adreasSql;
                    TextBox4.Text = datumSql;
                    //   TextBox4.Text = DateTime.Parse(Request.Form[TextBox4.UniqueID]);
                    TextBox5.Text = informacijeSql;
                }
            }
            catch (Exception ex)
            {
                MsgBox(ex.Message, this.Page, this);
            }
            finally
            {
                conn.Close();
                //  DropDownList1.ClearSelection();

             //   DropDownList1.Attributes.Add("Size", "2");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if(this.TextBox1.Text == string.Empty)
        {
            MsgBox("Potrebno je unijeti naziv događaja!", this.Page, this);
        }
        else
        {
            using (SqlConnection conn = new SqlConnection(konekcijskiString))
            {
                string query = "INSERT INTO KORISNICI(Naziv, Email, IdKorisnik, Adresa, Datum, Informacije) VALUES " +
                        "('" + this.TextBox1.Text + "' , " +
                        " '" + this.TextBox2.Text + "' , " +
                        " '" + Label6.Text + "' , " +
                        "'" + this.TextBox3.Text + "' ,  " +
                        "'" + this.TextBox4.Text +
                        "' , '" + this.TextBox5.Text + "' " +
                        ")";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader myReader;
                try
                {
                    conn.Open();
                    myReader = cmd.ExecuteReader();
                    MsgBox("Uspješno uneseni podaci!", this.Page, this);
                 //   DropDownList1.Items.Clear();
                    while (myReader.Read())
                    {

                    }
                } catch (Exception ex)
                {
                    MsgBox(ex.Message, this.Page, this);
                } finally
                {
                    DropDownList1.DataBind();
                    conn.Close();
                }
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(konekcijskiString))
        {
            string query = "DELETE FROM KORISNICI WHERE Naziv = '" + this.TextBox1.Text + "' ;";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader myReader;
            try
            {
                conn.Open();
                myReader = cmd.ExecuteReader();
                MsgBox("Uspješno obrisani podaci!", this.Page, this);
              //  DropDownList1.Items.Clear();

            } catch (Exception ex)
            {
                MsgBox(ex.Message, this.Page, this);
            } finally
            {
                conn.Close();
            }
        }
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
        this.TextBox4.Text = "";
        this.TextBox5.Text = "";

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}