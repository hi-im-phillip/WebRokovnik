<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <title></title>
</head>

    <style> 
       body {
          background-image: url("https://cdna.artstation.com/p/assets/images/images/003/629/152/large/lucci-desu-the-witcher-3-super-resolution-2016-10-06-18-50-03-81.jpg?1475777320"); 
        }
       .DDlCountry {
        width: 128px;
        margin: 0 15px 0 0;
        font: 12px tahoma;
        max-height: 200px;
        overflow-y: scroll;
        position: relative;
    }
    }

    </style>

<body>
    <form id="form1" runat="server">
        <div style="height: 499px">
            <asp:DropDownList ID="DropDownList1" class="btn btn-success dropdown-toggle" style="
    margin-left: 500px;
    margin-top: 30px;" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:Label ID="Label7" runat="server" Text="Korisnik: " style="
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 450px;
    font-weight: 600;
    color: HighlightText;
"></asp:Label>
<asp:Label ID="Label6" runat="server" Text="Label" style="
    margin-top: 0px;
    margin-bottom: 0px;
    font-weight: 600;
    color: HighlightText;
"></asp:Label>           
            <br />
            
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"  Text="Naziv:" style="
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 700px;
    font-weight: 600;
    color: lightgreen;
" ></asp:Label>
            <asp:TextBox ID="TextBox1" class="form-control" placeholder="Unesite naziv događaja..." runat="server" style="
    border-right-width: 0.1;
    border-right-width: 0,1;
    border-right-width: -1;
    border-right-width: 1px;
    padding-right: 12px;
    width: 316px;
    margin-left: 30‒;
    margin-right: 5px;
    margin-left: 700px;
    padding-left: 12px;
    border-left-width: 1px;
" ></asp:TextBox>
            
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label  ID="Label2" runat="server" Text="E-mail adresa:" style="
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 700px;
    font-weight: 600;
    color: lightgreen;
" ></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" class="form-control" placeholder="Unesite E-mail adresu..." runat="server" style="
    border-right-width: 0.1;
    border-right-width: 0,1;
    border-right-width: -1;
    border-right-width: 1px;
    padding-right: 12px;
    width: 316px;
    margin-left: 30‒;
    margin-right: 5px;
    margin-left: 700px;
    padding-left: 12px;
    border-left-width: 1px;
" ></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label3" runat="server" Text="Adresa:" style="
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 700px;
    font-weight: 600;
    color: lightgreen;
" ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;<asp:TextBox ID="TextBox3" class="form-control" placeholder="Unesite adresu..." runat="server" style="
    border-right-width: 0.1;
    border-right-width: 0,1;
    border-right-width: -1;
    border-right-width: 1px;
    padding-right: 12px;
    width: 316px;
    margin-left: 30‒;
    margin-right: 5px;
    margin-left: 700px;
    padding-left: 12px;
    border-left-width: 1px;
"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label4" runat="server" Text="Datum:" style="
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 700px;
    font-weight: 600;
    color: lightgreen;
" ></asp:Label>
 <asp:TextBox ID="TextBox4" runat="server" class="form-control" type="datetime" TextMode="Date" ReadOnly="true"  OnTextChanged="TextBox4_TextChanged" style="
    border-right-width: 0.1;
    border-right-width: 0,1;
    border-right-width: -1;
    border-right-width: 1px;
    padding-right: 12px;
    width: 316px;
    margin-left: 30‒;
    margin-right: 5px;
    margin-left: 700px;
    padding-left: 12px;
    border-left-width: 1px;
"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Dodatne informacije:" style="
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 700px;
    font-weight: 600;
    color: lightgreen;
" ></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder="Unesite dodatne informacije..." style="height: 114px;width: 326px;margin-left: 700px;border-right-width: 1px;"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />

            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Unesi" type="submit" OnClick="Button1_Click" style="margin-left: 680px;"/>
       
            <asp:Button ID="Button2" runat="server" class="btn btn-success" OnClick="Button2_Click" Text="Promijeni" style="margin-left: 20px;"/>
         
            <asp:Button ID="Button3" runat="server" class="btn btn-danger" Text="Obriši" OnClick="Button3_Click" style="margin-left: 20px;"/>
        
            <asp:Button ID="Button4" runat="server" class="btn btn-secondary" Text="Reset" OnClick="Button4_Click" style="margin-left: 20px;" />

            <asp:Button ID="Button5" runat="server" class="btn btn-secondary" Text="Osvježi" OnClick="Button5_Click" style="margin-left: 20px;" />

            <asp:Button ID="Button6" runat="server" class="btn btn-secondary" OnClick="Button6_Click" Text="Odjava" style="margin-left: 20px;" />
        </div>
    </form>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
