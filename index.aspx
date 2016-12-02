<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="searchfilter">
            <div id="search-area">All Areas &emsp; &emsp; &emsp; &emsp; &emsp;▼</div>
            <div id="drop-search-area">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server" ID="SearchArea"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Areas</li>
                </ul>
                <h4 style="padding-top: 10px; padding-left: 5px;">Popular Areas</h4>
            </div>
            <div id="search-capacity">All Capacities &emsp; &emsp; &emsp; &emsp;▼</div>
            <div id="drop-search-capactiy">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Capacities</li>
                </ul>
            </div>
            <div id="search-button">
                <asp:Button runat="server" Text="Search" Style="height: 50px; line-height: 30px; border-radius: 0px;" CssClass="button" OnClick="Unnamed2_Click" />
            </div>
        </div>
        <div id="datagrid">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Style="margin-right: 122px">
                <Columns>
                    <asp:ImageField DataImageUrlField="uimg" HeaderText="Images">
                    </asp:ImageField>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
