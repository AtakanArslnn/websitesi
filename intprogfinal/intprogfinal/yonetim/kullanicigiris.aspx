<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanicigiris.aspx.cs" Inherits="intprogfinal.yonetim.kullanicigiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
  <title>Dashboard Sign In, Free Admin Template</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width"/>        
  <link rel="stylesheet" href="admin/css/templatemo_main.css"/>
    <link rel="stylesheet" href="admin/css/font-awesome.css"/>
    <link rel="stylesheet" href="admin/css/bootstrap.min.css"/>
<!-- 
Dashboard Template 
http://www.templatemo.com/preview/templatemo_415_dashboard
-->
    </head>
<body>
    <div id="main-wrapper">
    <div class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <div class="logo"><h1>Dashboard - Admin Template</h1></div>
      </div>   
    </div>
    <div class="template-page-wrapper">
        <form id="form1" runat="server">
        <div class="form-group">
          <div class="col-md-12">
            <label for="username" class="col-sm-2 control-label">E-Posta</label>
            <div class="col-sm-10">
              &nbsp;<label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_KullaniciGirisEposta" runat="server" class="form-control" placeholder="Eposta" type="text" /></span></label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
          </div>              
        </div>
        <div class="form-group">
          <div class="col-md-12">
            <label for="password" class="col-sm-2 control-label">Şifre</label>
            <div class="col-sm-10">
              &nbsp;<label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_KullaniciGirisSifre" runat="server" class="form-control" placeholder="Şifre" type="password" /></span></label></div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-12">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="checkbox">
                
              </div>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-12">
            <div class="col-sm-offset-2 col-sm-10">
              &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş Yap" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_hatamesaji" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kayıt Ol" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsifremiunuttum" runat="server" OnClick="btnsifremiunuttum_Click" Text="Şifremi Unuttum" />
            </div>
          </div>
        </div>
        </form>
    </div>
  </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
