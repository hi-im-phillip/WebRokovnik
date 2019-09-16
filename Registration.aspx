<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

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
    </style>
<body>
    <form id="form1" runat="server">
        
        <div class="form-group">    
      <label for="Ime" style="margin-bottom: .1rem;margin-left: 700px;">Ime</label>
      <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Vaše Ime" style="width: 400px;border-left-width: 1px;padding-left: 12px;margin-left: 700px;"></asp:TextBox>  
        </div>
     
        <div class="form-group">
      <label for="Prezime" style="margin-bottom: .1rem;margin-left: 700px;">Prezime</label>
&nbsp;<asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Vaše prezime" style="width: 400px;border-left-width: 1px;padding-left: 12px;margin-left: 700px;"></asp:TextBox>
     </div>
    
        <div class="form-group">
      <label for="Korisnicko Ime" style="margin-bottom: .1rem;margin-left: 700px;">Korisnicko Ime</label>     
        <asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder="Korisničko Ime" aria-describedby="inputGroupPrepend3" style="width: 400px;border-left-width: 1px;padding-left: 12px;margin-left: 700px;"></asp:TextBox>
      </div>
        
  <div class="form-group">   
      <label for="Lozinka" style="margin-bottom: .1rem;margin-left: 700px;">Lozinka</label>
      <asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder="Vaša Lozinka"  TextMode="Password" style="width: 400px;border-left-width: 1px;padding-left: 12px;margin-left: 700px;"></asp:TextBox>
  </div>
    
        <div class="form-group" style="margin-bottom: .1rem;">
          <label for="Ponovite lozinku" style="margin-bottom: .1rem;margin-left: 700px;">Ponovite Lozinku</label> 
            <asp:TextBox ID="TextBox6" class="form-control" runat="server" placeholder="Ponovljena Lozinka" TextMode="Password" style="width: 400px;border-left-width: 1px;padding-left: 12px;margin-left: 700px;"></asp:TextBox>
        </div>
  
  <asp:Button ID="Button2" class="btn btn-primary" runat="server" type="submit" Text="Registriraj se" style="
    margin-top: 15px;
    margin-left: 750px;" OnClick="Button2_Click"/>
      
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" class="btn btn-secondary" runat="server" type="submit"  OnClick="Button3_Click" style="
    margin-top: 15px;
    margin-left: 10px;" Text="Nazad"  />
      
    </form>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
