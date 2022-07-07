<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="degiskenleriyonet.aspx.cs" Inherits="intprogfinal.yonetim.degiskenleriyonet" %>

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
          <li ><a href="kullaniciyonetimi.aspx"><i class="fa fa-users"></i><span class="badge pull-right">NEW</span>Manage Users</a></li>
          <li class="active"><a href="degiskenleriyonet.aspx"><i class="fa fa-cog"></i>Site Manager</a></li>
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
          <h1>Site Manager</h1>
          <p>easy to manage your website</p>
            <p>&nbsp;<label for="username" class="col-sm-2 control-label">İletişim Numarası&nbsp; </label>
                <label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txtiletisimnumarası" runat="server" class="form-control" type="text" /></span></label></p>
            <p>
                <label class="block clearfix">&nbsp;&nbsp;&nbsp; </label>
            <label for="password" class="col-sm-2 control-label">Harita X</label><label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txtharitay" runat="server" class="form-control"  type="text" /></span></label></p>
            <p>
            <label for="username" class="col-sm-2 control-label">Harita Y</label><label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_adi" runat="server" class="form-control"  type="text" /></span></label></p>
            <p>
            <label for="username" class="col-sm-2 control-label">Logo Açıklama</label><label class="block clearfix"><span class="block input-icon input-icon-right"><input id="txt_aciklama" runat="server" class="form-control"  type="text" /></span></label></p>
            <p>
                <label for="username" class="col-sm-2 control-label">Logo Resim</label><asp:FileUpload ID="FileUpload1" runat="server" />
            </p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kaydet" />
              &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_hatamesaji" runat="server"></asp:Label>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Boyutu değiştirip kaydet" Width="183px" />
            </p>

          <div class="row margin-bottom-30">
            <div class="col-md-12">
                      
                <br />
                <asp:GridView ID="grd_sabitler" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="sabitID,logoURL" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1034px">
                    <Columns>
                        <asp:BoundField DataField="logoAciklama" HeaderText="logoAciklama" SortExpression="logoAciklama" />
                        <asp:BoundField DataField="siteadi" HeaderText="siteadi" SortExpression="siteadi" />
                        <asp:BoundField DataField="iletisimtel" HeaderText="iletisimtel" SortExpression="iletisimtel" />
                        <asp:BoundField DataField="haritax" HeaderText="haritax" SortExpression="haritax" />
                        <asp:BoundField DataField="haritay" HeaderText="haritay" SortExpression="haritay" />
                        <asp:TemplateField HeaderText="Logo">
                            <ItemTemplate>
                            <asp:Image runat="server" Width="100px" ImageUrl='<%#Eval("LogoURl","/Upload/Orjinal/{0}") %>'></asp:Image>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sil">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btn_Sil" runat="server" CommandArgument='<%#Eval("SabitID") %>' Text="Sil" CssClass="btn btn-danger" OnClick="btn_Sil_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="DAL.sabit" DeleteMethod="Sil" SelectMethod="Listele" TypeName="BLL.BLLSabit" InsertMethod="LogoKaydet">
                    <DeleteParameters>
                        <asp:Parameter Name="SabitID" Type="Int32" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
                      
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
