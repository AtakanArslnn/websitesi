<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanicisifremiunuttum.aspx.cs" Inherits="intprogfinal.yonetim.kullanicisifremiunuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div id="main-wrapper">
    <div class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <div class="logo"><h1>Dashboard - Admin Template</h1></div>
      </div>   
    </div>
    <form id="form1" runat="server">
        <div class="col-sm-10">
              <asp:Label ID="lbleposta" runat="server" Text="Eposta"></asp:Label>
              &nbsp;<label class="block clearfix"><span class="block input-icon input-icon-right">&nbsp;&nbsp;&nbsp; <input id="txt_KullaniciGirisEposta" runat="server" class="form-control" placeholder="Eposta" type="text" /></span></label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" />
&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblhatamesaji" runat="server"></asp:Label>
                </div>
    </form>
        </div>
</body>
</html>
