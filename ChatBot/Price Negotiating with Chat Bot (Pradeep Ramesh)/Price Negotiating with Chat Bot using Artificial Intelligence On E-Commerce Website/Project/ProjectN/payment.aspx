<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User.master" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="privacy about">
				<h3>Pay<span>ment</span></h3>
				<!--/tabs-->
				<div class="responsive_tabs">
					<div id="horizontalTab">
						<ul class="resp-tabs-list">
							
							<li>Credit/Debit</li>
							
							
						</ul>
						<div class="resp-tabs-container">
							<!--/tab_one-->
							
							<div class="tab2">
								<div class="pay_info">
									
										<section class="creditly-wrapper wthree, w3_agileits_wrapper">
											<div class="credit-card-wrapper">
												<div class="first-row form-group">
													<div class="controls">
														<label class="control-label">Name on Card</label>
														<input class="billing-address-name form-control" type="text" name="name" placeholder="John Smith">
													</div>
													<div class="w3_agileits_card_number_grids">
														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">Card Number</label>
																<input class="number credit-card-number form-control" type="text" name="number" inputmode="numeric" autocomplete="cc-number"
																    autocompletetype="cc-number" x-autocompletetype="cc-number" placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
															</div>
														</div>
														<div class="w3_agileits_card_number_grid_right">
															<div class="controls">
																<label class="control-label">CVV</label>
																<input class="security-code form-control" Â· inputmode="numeric" type="text" name="security-code" placeholder="&#149;&#149;&#149;">
															</div>
														</div>
														<div class="clear"> </div>
													</div>
													<div class="controls">
														<label class="control-label">Expiration Date</label>
														<input class="expiration-month-and-year form-control" type="text" name="expiration-month-and-year" placeholder="MM / YY">
													</div>

                                                    <asp:Panel ID="Panel1" runat="server">
                                                    <div class="controls">
														<label class="control-label">Total Amount</label>
                                                        <asp:TextBox ID="total" runat="server" class="billing-address-name form-control" disabled></asp:TextBox>
													</div>
                                                        </asp:Panel>
												</div>
                                                <asp:Button ID="Button1" class="button add" runat="server" Text="Make a payment" OnClick="Button1_Click" />
                                                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
											</div>
										</section>
									

								</div>
							</div>
					
							
				<!--//tabs-->
			</div>

		</div></div>
		<!-- //payment -->

		<div class="clearfix"></div>
	</div></div></div>
</asp:Content>
