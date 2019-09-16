<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <title>Osobni Rokovnik</title>
</head>
    <style> 
       body {
          background-image: url("https://cdna.artstation.com/p/assets/images/images/003/629/152/large/lucci-desu-the-witcher-3-super-resolution-2016-10-06-18-50-03-81.jpg?1475777320"); 
        }
    </style>
    
<body>
    <div class="text-center">
  <img src="..\img\logo.PNG" class="rounded" alt="logo" style=" height: 250px;" />
    

</div>
    <form id="form1" runat="server">
        <div class="container" style="height: 200px;
    padding-top: 300px;
    padding-left: 400px;">
    <label for="KorisnickoIme" style="
    padding-top: 5px;
    padding-bottom: 0px;
    border-bottom-width: 5px;
    margin-bottom: 0px;
    border-top-width: 5px;
    font-size: 1.2rem;
    color: #ffffff;
    padding-right: 600px;">Korisničko Ime</label>
            <asp:TextBox ID="TextBox2" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Unesite Korisnicko Ime" Width="350px"></asp:TextBox>
  
    <label for="Lozinka" style="
    padding-top: 5px;
    padding-bottom: 0px;
    border-bottom-width: 5px;
    margin-bottom: 0px;
    border-top-width: 5px;
    font-size: 1.2rem;
    color: #ffffff;
    padding-right: 700px;">Lozinka</label>   
            <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Unesite Lozinku" Width="350px" TextMode="Password"></asp:TextBox>   
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Prijavi se" OnClick="Button1_Click" style="
    margin-top: 15px; margin-left: 0px" OnCommand="Page_Load" />             
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
        <asp:Button ID="Button2" runat="server" class="btn btn-secondary" Text="Registriraj se" OnClick="Button2_Click" style="margin-top: 15px;margin-right: 380px;" OnCommand="Page_Load" />
    </div>
  </form>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
