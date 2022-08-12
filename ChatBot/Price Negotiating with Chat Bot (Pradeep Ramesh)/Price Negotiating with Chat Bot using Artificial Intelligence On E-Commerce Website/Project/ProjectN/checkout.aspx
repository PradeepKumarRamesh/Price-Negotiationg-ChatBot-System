<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User.master" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="privacy about">
				<h3>Chec<span>kout</span></h3>

				<div class="checkout-right">
					<h4>Your shopping cart: </h4>
					<table class="timetable_sub">
						<thead>
							<tr>
								
								<th>Product</th>
								
								<th>Product Name</th>

								<th>Price</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                <tr class="rem1">
								
								<td class="invert-image">
                                 <center>
                                        <img src="<%#Eval("image") %>" alt=" " class="img-responsive"></td>
								</center>
								<td class="invert"><%#Eval("name") %></td>

								<td class="invert"><%#Eval("price") %></td>
								<td class="invert">
									<div class="rem">
										<a href="checkout.aspx?pid=<%#Eval("pid") %>">
                                            <div class="close1"> </div>
                                            </a>
									</div>

								</td>
							</tr>
                            </ItemTemplate>
                            </asp:ListView>
						</tbody>
					</table>
				</div>
				<div class="checkout-left">
					
					<div class="col-md-8 address_form">
						<div class="checkout-right-basket">
							<a href="payment.aspx">Make a Payment </a>
						</div>
					</div>

					<div class="clearfix"> </div>


					<div class="clearfix"></div>
				</div>
			</div>
		</div>
        </div>
        </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <center><br /><br /><br /> <br /><br /><br />
         No Items In Cart
         <br /><br /><br /> <br /><br /><br />
            </center>
       
    </asp:Panel>
</asp:Content>
