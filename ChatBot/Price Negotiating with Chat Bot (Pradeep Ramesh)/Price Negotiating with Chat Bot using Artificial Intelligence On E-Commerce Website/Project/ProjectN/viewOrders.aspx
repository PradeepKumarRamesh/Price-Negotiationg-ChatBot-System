<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin.master" CodeFile="viewOrders.aspx.cs" Inherits="viewOrders" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <br />
        <br />
         <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<h3 class="head">Customer Orders</h3>
			<p class="head_para">View Orders here...</p>
			<div class="inner_section_w3ls">
				
        <asp:GridView ID="GridView1" runat="server" Width="938px" AutoGenerateColumns="false" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            <Columns>
                <asp:BoundField HeaderText="Order Id" DataField="oid" />
                <asp:BoundField HeaderText="User Id" DataField="uid" />
                <asp:BoundField HeaderText="Customer Name" DataField="uname" />
                <asp:BoundField HeaderText="Products Purchased" DataField="pnames" />
                <asp:BoundField HeaderText="Total Price" DataField="tprice" />
            </Columns>
            </asp:GridView>
        <br />
        <br /></div></div></div></div>
        </center>
</asp:Content>

