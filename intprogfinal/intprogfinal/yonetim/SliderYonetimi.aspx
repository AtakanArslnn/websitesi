<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SliderYonetimi.aspx.cs" Inherits="intprogfinal.yonetim.SliderYonetimi" %>

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
        .auto-style2 {
            margin-top: 0;
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
            <p>&nbsp;</p>
            <p><label for="username" class="col-sm-2 control-label">Slider Açıklama</label><label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_KullaniciGirisEposta" runat="server" class="form-control" placeholder="Açıklama" type="text" /></span></label></p>
            <p>
                <label class="block clearfix">&nbsp;&nbsp;&nbsp;</label></p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Slider Resim:"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style2" />
            </p>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kaydet Boyutlandır" />
            </p>
            <p>
                &nbsp;</p>
            <p>
              &nbsp;</p>
            <p>
                &nbsp;&nbsp;
                <asp:Label ID="lbl_hatamesaji" runat="server"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="SliderID,SliderMetin,SliderResimURL,SilinmeDurumu" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="SliderMetin" HeaderText="SliderMetin" SortExpression="SliderMetin" />
                        <asp:BoundField DataField="EklemeTarihi" HeaderText="EklemeTarihi" SortExpression="EklemeTarihi" />
                         <asp:TemplateField HeaderText="Slider Resim">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" Width="128px" ImageUrl='<%#Eval("SliderResimURL","/Upload/Orjinal/{0}") %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sil">

                            <ItemTemplate>
                                                        <asp:Button ID="btn_Sil" runat="server" CommandArgument='<%#Eval("SliderID") %>' Text="Sil" CssClass="btn btn-danger" OnClick="btn_Sil_Click" />
                                                    </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="DAL.Slider" InsertMethod="SliderKaydet" SelectMethod="TumResimleriListele" TypeName="BLL.BLLSlider"></asp:ObjectDataSource>
            </p>

          <div class="row margin-bottom-30">
            <div class="col-md-12">
                      
                <br />
                      
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
