<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserPanel.aspx.cs" Inherits="UserPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="text-align:center;"> &nbsp;</h1>
     <h1 style="text-align:center;"> &nbsp;</h1>
     <h1 style="text-align:center;"> <asp:Label runat="server" Text="USER DATA" ID="TableName" ></asp:Label></h1>
     <p style="text-align:center;"> 
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"  >
             <asp:ListItem Selected="True" Value="1">User</asp:ListItem> 
             <asp:ListItem Value="2">Vendor</asp:ListItem>
         </asp:DropDownList>
     </p>
        <div class="left-div" style="width:30%; height:200px; float:left;"></div>
        <div class="data-div"  style="width:30%; height:200px; float:left; margin-left:40px;">
            <asp:GridView ID="GridView2" runat="server" Height="196px" Width="365px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Id" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="LawnName" HeaderText="LawnName" SortExpression="LawnName" />
                    <asp:BoundField DataField="SeatingCapacity" HeaderText="SeatingCapacity" SortExpression="SeatingCapacity" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="BankAcc" HeaderText="BankAcc" SortExpression="BankAcc" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="ConfirmPassword" HeaderText="ConfirmPassword" SortExpression="ConfirmPassword" />
                    <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                    <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FYPDataContext" EntityTypeName="" TableName="LawnOwners">
            </asp:LinqDataSource>
            <asp:GridView ID="GridView1" runat="server" Height="196px" Width="365px" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="User Name" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone No" />
                    <asp:BoundField DataField="Email" HeaderText="Email Address" />
                    <asp:BoundField DataField="CNIC" HeaderText="CNIC" />
                    <asp:BoundField DataField="User_Role" HeaderText="Role" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CommandArgument='<%# Eval("Email") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [AllUsers]"></asp:SqlDataSource>
        </div>
</asp:Content>


