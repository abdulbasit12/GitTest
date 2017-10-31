<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bookingstatus.aspx.cs" Inherits="bookingstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .search{position:relative;margin-top:38px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="search">
            <div class="search-filters">
                <div class="left-right">
                    <div class="search-bar">
                        <asp:TextBox runat="server" ID="SearchAreaText" class="filter-field" placeholder="Search Lawn"></asp:TextBox>
                    </div>
                    <div class="filter-right">
                        <div class="filter">
                            <asp:DropDownList ID="DropDownList1" runat="server" Class="dropdown-select"></asp:DropDownList>
                        </div>
                        <div class="filter">
                            <asp:DropDownList ID="DropDownList2" runat="server" Class="dropdown-select"></asp:DropDownList>
                        </div>
                        <div class="filter">
                            <asp:TextBox runat="server" ID="Min_Capacity" class="filter-capacity" placeholder="Min-Capacity" TextMode="Number" min="1"></asp:TextBox>
                        </div>
                        <div class="filter">
                            <asp:TextBox runat="server" ID="Capacity" class="filter-capacity" placeholder="Max-Capacity" TextMode="Number" min="1"></asp:TextBox>
                        </div>
                        <div class="search-button">
                            <span class="search-icon"></span>
                            <asp:Button runat="server" CssClass="button-Search" Text="Search" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="bookings-data">
        
        <h2>Booking Data</h2>
        <asp:GridView ID="grd_booking" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

            <EditRowStyle BackColor="#2461BF"></EditRowStyle>

            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#EFF3FB"></RowStyle>

            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
        </asp:GridView>
    </div>
</asp:Content>

