<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User.master" CodeFile="single.aspx.cs" Inherits="single" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="90%"><tr><td width="50%">
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
    <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides" style="list-style-type: none;">
							<li data-thumb="images/d2.jpg" style="text-decoration:none">
								<div class="thumb-image"> <img src="<%#Eval("image") %>" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3><%#Eval("name") %></h3>
				<p><span class="item_price"><%#Eval("price") %></span>
					
				</p>
				<div class="rating1">
					
				</div>
				<div class="description">
					<h5><%#Eval("features") %></h5>
					
				</div>
				
					
					</div>

				
				</div>
				
			</div>
			<div class="clearfix"> </div>
			<!--/tabs-->
			
			
				
				<!-- //womens -->
				<div class="clearfix"></div>
			</div>
			<!--//new_arrivals-->


		</div>
            </ItemTemplate>
	</asp:ListView>
         <center>
     <asp:Button ID="Button1" runat="server" Text="Add to cart"  class="button add" OnClick="Button1_Click"/>
			<br /><br /><br /><br /></center>	
        </td>

        <td width="50%">
             <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<h3 class="head">ASK Here</h3>
            <br />
            <br />
           
			<p class="head_para">WELCOME...</p>
			<div class="inner_section_w3ls">
				<div class="col-md-12 contact_grid_right">
						<div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:HiddenField id="hiddenflag" runat="server" Value="0"/>
							<asp:HiddenField id="hiddenpid" runat="server" Value="0"/>
							
                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Height="347px" Width="451px" style="padding: 40px 40px 10px 20px; border: 1px solid #d7cbcb;">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </asp:Panel>
                            <br />
							<asp:TextBox ID="chat" runat="server" TextMode="MultiLine" Rows="3" Columns="75" placeholder="Type here..."></asp:TextBox>
							 
                            <asp:Button ID="Button2" runat="server" Text="SEND" OnClick="Button2_Click" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:Button>
                             <br />
                            <br /><br /><br />
						</div></div></div></div></div>
        </td>
           </tr></table>
   			
    </asp:Content>

