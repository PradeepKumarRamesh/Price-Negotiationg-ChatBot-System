<%@ Page Language="C#" MasterPageFile="~/User.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ads-grid_shop">
		<div class="shop_inner_inf">
    <div class="left-ads-display col-md-12">
				
					<div class="product-sec1">
                        <div >
                        <div class="clearfix"></div><br /><br />
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
 <div class="col-md-4 product-men">
							<div class="product-shoe-info shoe">
								<div class="men-pro-item">
									<div class="men-thumb-item">
										<img src="<%#Eval("image") %>" alt="">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.aspx?pid=<%#Eval("pid") %>" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										
									</div>
									<div class="item-info-product">
										<h4>
											<a href="single.aspx?pid=<%#Eval("pid") %>"><%#Eval("name") %></a>
										</h4>
										<div class="info-product-price">
											<div class="grid_meta">
												<div class="product_price">
													<div class="grid-price ">
														<span class="money "><%#Eval("price") %></span>
													</div>
												</div>
												
											</div>
											<div class="shoe single-item hvr-outline-out">
												<form action="#" method="post">
													
													<a href="single.aspx?pid=<%#Eval("pid") %>">
                                                        <i class="fa fa-cart-plus" aria-hidden="true" style="color:maroon;font-size:25px"></i></a>

													<a href="#" data-toggle="modal" data-target="#myModal1"></a>
												</form>

											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
            </ItemTemplate>
        </asp:ListView></div></div></div></div></div>

    <br />
</asp:Content>
