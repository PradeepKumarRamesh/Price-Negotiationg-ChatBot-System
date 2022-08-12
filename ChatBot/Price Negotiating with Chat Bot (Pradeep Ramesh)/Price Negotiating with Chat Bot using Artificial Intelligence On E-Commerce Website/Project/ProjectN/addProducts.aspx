<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin.master" CodeFile="addProducts.aspx.cs" Inherits="addProducts" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<h3 class="head">Product Entry</h3>
            
            <br />
            <br />
            
            <asp:Image ID="Image1" runat="server" Height="89px" Visible="False" Width="105px"></asp:Image>
            <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
            <asp:Button ID="Button3" runat="server" Text="upload" OnClick="Button3_Click"></asp:Button>

			<p class="head_para">Add Products here...</p>
			<div class="inner_section_w3ls">
				<div class="col-md-12 contact_grid_right">
					<h6>Please fill this form to add products.</h6>
					


						<div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="pid" runat="server" placeholder="Product Id"></asp:TextBox>
							<asp:TextBox ID="pname" runat="server" placeholder="Name"></asp:TextBox>
						</div>
						<div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="warranty" runat="server" placeholder="Warranty"></asp:TextBox>
							<asp:TextBox ID="delivery" runat="server" placeholder="Delivery"></asp:TextBox>
						</div>

                    <div class="col-md-6 col-sm-6 contact_left_grid">
                        <br />
							<asp:TextBox  ID="discount" runat="server" placeholder="Discount"></asp:TextBox>
                        <br /><br />
                        <asp:TextBox CssClass="pwdbtn" type="number" ID="finalpr" runat="server" placeholder="Final Price"></asp:TextBox>
						</div>

                    <div class="col-md-6 col-sm-6 contact_left_grid">
                         <br />
							<asp:TextBox CssClass="pwdbtn" type="number" ID="price" runat="server" placeholder="Price"></asp:TextBox>
						</div>

						<div class="clearfix"> </div>
						<asp:TextBox ID="features" runat="server" placeholder="Features" TextMode="MultiLine"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
					
				</div>
				
				<div class="clearfix"> </div>

			</div>

			<div class="clearfix"></div>

		</div>
	</div>
        </center>
</asp:Content>
