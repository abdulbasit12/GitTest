<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <link href="Styles/nivo-slider.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Default.css" rel="stylesheet" type="text/css" />
    <link href="Styles/nivo-slider.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Demo.js" type="text/javascript"></script>
    <div id="main">
        <div id="searchfilter">
            <div id="search-area">All Areas &emsp; &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-area">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server" ID="SearchArea"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Areas</li>
                </ul>
                <h4 style="padding-top: 10px; padding-left: 5px;">Popular Areas</h4>
            </div>
            <div id="search-capacity">All Capacities &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-capactiy">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Capacities</li>
                </ul>
            </div>
            <div id="search-button">
                <asp:Button runat="server" Text="Search" Style="height: 50px; line-height: 30px; border-radius: 0px; " CssClass="button" OnClick="Unnamed2_Click" /></div>
        </div>
        <div id="datagrid">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" style="margin-right: 122px; margin-top: 2px;" Width="174px" OnRowCommand="GridView2_RowCommand" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:ImageField DataImageUrlField="uimg" HeaderText="Images">
                   <ControlStyle Height="300px" Width="600px" />
                         </asp:ImageField>
                    <asp:BoundField DataField="LawnName" HeaderText="Lawn Name" />
                    
                    <asp:BoundField DataField="SeatingCapacity" HeaderText="Capacity" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="ID" Visible="False" />
                    <asp:CommandField ShowSelectButton="True" />
                    
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                
            </asp:GridView>
        </div>


        <
    </div>
        
</asp:Content>
