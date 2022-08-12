<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" MasterPageFile="~/admin.master" CodeFile="editProducts.aspx.cs" Inherits="editProducts" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
        <br />
        <br />
         <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<h3 class="head">Our Products</h3>
			<p class="head_para">View/Edit Products here...</p>
			<div class="inner_section_w3ls">
				
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
    CellPadding="4" ForeColor="Black" AllowPaging="True" PageSize="5" OnRowCancelingEdit="GridView1_RowCancelingEdit"   
OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_Del"
            OnPageIndexChanging="grdData_PageIndexChanging" Width="90%">
    <Columns>
    
       
    <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server"  CssClass="intab" Width="100px" Height="25px" Text="Edit" CommandName="Edit" BackColor="Black" BorderColor="Black" ForeColor="White" />
                        <br /><br />
                        <asp:Button ID="Button1" runat="server" CssClass="intab" Width="100px" Height="25px" Text="Delete" CommandName="Delete" BorderColor="Red" ForeColor="Black" />   
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CssClass="intab" Width="100px" Height="25px" CommandName="Update" BackColor="Black" BorderColor="Black" ForeColor="White"/>  
                        <br /><asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CssClass="intab" Width="100px" Height="25px" CommandName="Cancel" BorderColor="Red" ForeColor="Black"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Id">  
                    <ItemTemplate>  
                        <asp:Label ID="l1" runat="server" Text='<%#Eval("pid") %>'></asp:Label>  
                    </ItemTemplate>  
                    </asp:TemplateField>
               
        <asp:TemplateField HeaderText="Image">  
                    <ItemTemplate>  
                        <asp:Image ID="Image1" runat="server" src='<%#Eval("image") %>' ControlStyle-Height="100px" ControlStyle-Width="100px"/>
                    </ItemTemplate>
                      
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="l2" runat="server" Text='<%#Eval("name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("name") %>'></asp:TextBox>
                    </EditItemTemplate>  
                </asp:TemplateField> 
                 
                <asp:TemplateField HeaderText="Features">  
                    <ItemTemplate>  
                        <asp:Label ID="l3" runat="server" Text='<%#Eval("features") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("features") %>'></asp:TextBox>
                      
                    </EditItemTemplate>  
                </asp:TemplateField>  

                 <asp:TemplateField HeaderText="Warranty">  
                    <ItemTemplate>  
                        <asp:Label ID="l4" runat="server" Text='<%#Eval("warranty") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("warranty") %>'></asp:TextBox>
                      
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Delivery">  
                    <ItemTemplate>  
                        <asp:Label ID="l5" runat="server" Text='<%#Eval("delivery") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("delivery") %>'></asp:TextBox>
                      
                    </EditItemTemplate>  
                </asp:TemplateField>  

          <asp:TemplateField HeaderText="Discount">  
                    <ItemTemplate>  
                        <asp:Label ID="l6" runat="server" Text='<%#Eval("discount") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%#Eval("discount") %>'></asp:TextBox>
                      
                    </EditItemTemplate>  
                </asp:TemplateField>
        
         <asp:TemplateField HeaderText="Price">  
                    <ItemTemplate>  
                        <asp:Label ID="l7" runat="server" Text='<%#Eval("price") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                      
                    </EditItemTemplate>  
                </asp:TemplateField>

         <asp:TemplateField HeaderText="Final Price">  
                    <ItemTemplate>  
                        <asp:Label ID="l8" runat="server" Text='<%#Eval("lastPrice") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%#Eval("lastPrice") %>'></asp:TextBox>
                      
                    </EditItemTemplate>  
                </asp:TemplateField>

    </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="center" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
        <br />
        <br /></div></div></div>
        </center>
</asp:Content>

