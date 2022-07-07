<%@ Page Title="" Language="C#" MasterPageFile="~/icerik.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="intprogfinal.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <div class="flexslider" style="margin-top:14%">

            <ul class="slides">
 
               
                    
                     <asp:Literal ID="ltr_Slider" runat="server"></asp:Literal>
                   
                
                
                   
               
            </ul>
        </div> <!-- /.flexslider -->
 <div class="wrap" style="margin-top:5%">
   <div class="grids">
				<h4>En çok tercih edilen turlarımız</h4><h5> </h5><div class="clear"> </div>
				<div class="section group " style="margin-left:5%"">
			<asp:Literal ID="ltr_AltSlider" runat="server"></asp:Literal>
			</div>
			</div>

 </div>
</asp:Content>
