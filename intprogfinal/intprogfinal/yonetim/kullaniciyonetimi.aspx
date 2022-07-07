<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullaniciyonetimi.aspx.cs" Inherits="intprogfinal.yonetim.kullaniciyonetimi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
  <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
  <title>Dashboard Tables, Free Admin Template</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width">        
  <link rel="stylesheet" href="admin/css/templatemo_main.css">
      <link rel="stylesheet" href="admin/css/bootstrap.min.css">
      <link rel="stylesheet" href="admin/css/font-awesome.min.css">
<!-- 
Dashboard Template 
http://www.templatemo.com/preview/templatemo_415_dashboard
-->
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: -22px;
            top: -6px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <div id="main-wrapper">
    <div class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <div class="logo"><h1>Dashboard - Admin Template</h1></div>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button> 
      </div>   
    </div>
    <div class="template-page-wrapper">
      <div class="navbar-collapse collapse templatemo-sidebar">
        <ul class="templatemo-sidebar-menu">
          <li>
              <input type="text" class="form-control" id="templatemo_search_box" placeholder="Search...">
              <span class="btn btn-default">Go</span>
            </li>
          <li><a href="index.aspx"><i class="fa fa-home"></i>Dashboard</a></li>
          
          <li><a href="altslideryonetimi.aspx"><i class="fa fa-cubes"></i><span class="badge pull-right">9</span>Sub Slider Management</a></li>
          <li><a href="SliderYonetimi.aspx"><i class="fa fa-map-marker"></i><span class="badge pull-right">42</span>Slider Management</a></li>
          <li class="active"><a href="kullaniciyonetimi.aspx"><i class="fa fa-users"></i><span class="badge pull-right">NEW</span>Manage Users</a></li>
          <li><a href="degiskenleriyonet.aspx"><i class="fa fa-cog"></i>Site Manager</a></li>
          <li><a href="javascript:;" data-toggle="modal" data-target="#confirmModal"><i class="fa fa-sign-out"></i>Sign Out</a></li>
        </ul>
      </div><!--/.navbar-collapse -->

      <div class="templatemo-content-wrapper">
        <div class="templatemo-content">
          <ol class="breadcrumb">
            <li><a href="index.aspx">Admin Panel</a></li>
            <li><a href="#">Manage Users</a></li>
            <li class="active">Tables</li>
          </ol>
          <h1>Manage Users</h1>
          <p>Here goes tables and users.</p>
            <p>&nbsp;<label for="username" class="col-sm-2 control-label">E-Posta&nbsp; </label>
                <label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_KullaniciGirisEposta" runat="server" class="form-control" placeholder="Eposta" type="text" /></span></label></p>
            <p>
                <label class="block clearfix">&nbsp;&nbsp;&nbsp; </label>
            <label for="password" class="col-sm-2 control-label">Şifre</label><label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_KullaniciGirisSifre" runat="server" class="form-control" placeholder="Şifre" type="password" /></span></label></p>
            <p>
            <label for="username" class="col-sm-2 control-label">Adı</label><label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_adi" runat="server" class="form-control" placeholder="Adı" type="text" /></span></label></p>
            <p>
            <label for="username" class="col-sm-2 control-label">Soyadı</label><label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_soyadi" runat="server" class="form-control" placeholder="Soyadı" type="text" /></span></label></p>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kaydet" />
              &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_hatamesaji" runat="server"></asp:Label>
            </p>

          <div class="row margin-bottom-30">
            <div class="col-md-12">
                      
                <br />
                <asp:GridView ID="grd_kullanicilar" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="kullaniciID" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1034px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="Eposta" HeaderText="Eposta" SortExpression="Eposta" />
                        <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
                        <asp:BoundField DataField="Soyadi" HeaderText="Soyadi" SortExpression="Soyadi" />
                        <asp:BoundField DataField="eklenmeTarihi" HeaderText="eklenmeTarihi" SortExpression="eklenmeTarihi" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="DAL.Kullanici" DeleteMethod="KullaniciSil" SelectMethod="TumKullanicilar" TypeName="BLL.BLLKullanici"></asp:ObjectDataSource>
                      
            </div>
          </div> 
          <div class="row">
            <div class="auto-style1">
            </div>
          </div>
        </div>
      </div>

      <!-- Modal -->
      <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              <h4 class="modal-title" id="myModalLabel">Are you sure you want to sign out?</h4>
            </div>
            <div class="modal-footer">
              <a href="sign-in.html" class="btn btn-primary">Yes</a>
              <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
            </div>
          </div>
        </div>
      </div>

      <footer class="templatemo-footer">
        <div class="templatemo-copyright">
          <p>Copyright &copy; 2084 Your Company Name <!-- Credit: www.templatemo.com --></p>
        </div>
      </footer>
    </div>
</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/templatemo_script.js"></script>
    </form>
  </body>
</html>
