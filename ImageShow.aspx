<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageShow.aspx.cs" Inherits="ImageShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 416px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="321px"  Width="497px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField DataImageUrlField="uimg" HeaderText="Images">
                </asp:ImageField>
            </Columns>
          
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
            
        </asp:GridView>
       
        <asp:LinqDataSource ID="ImagesDML" runat="server" ContextTypeName="FYPDataContext" EntityTypeName="" TableName="Images">
        </asp:LinqDataSource>
       
&nbsp;<asp:Button ID="Button1" runat="server" Height="54px" OnClick="Button1_Click" style="margin-left: 38px; margin-top: 24px" Text="Button" Width="138px" />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        </div>
    </form>
</body>
</html>
