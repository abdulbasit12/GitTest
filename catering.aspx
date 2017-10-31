<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="catering.aspx.cs" Inherits="catering" %>

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
    <div id="catering-packages">
        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
            <ItemTemplate>
                <div class="packages">
                    <table>
                        <tr>
                            <td>
                                <asp:Button runat="server" Text="Package " Class="btn-packg" ID="Package" OnClick="Package_Click" />
                                <asp:Label runat="server" Class="lbl-price" Text='<%# Eval("PackageRate") %>' ID="PackageRate"></asp:Label>
                                <br />
                                <asp:Label runat="server" Class="lbl-price" Text='<%# Eval("PackageRate") %>' ID="Label2"></asp:Label>
                                <asp:Label runat="server" Text='<%# Eval("PackageId") %>' ID="PackageID" Visible="false"></asp:Label>
                            </td
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="heading-package">
        <asp:label runat="server" ID="PackageInformation" text="Package 1"></asp:label>
    </div>
    <asp:Repeater runat="server" ID="repeater2"  OnItemDataBound="repeater2_ItemDataBound">
        <ItemTemplate>
            <div class="package-detail">
               
                <div class="items">
                    <table>
                        <tr>  <td><asp:Label runat="server" Text='<%# Eval("PackagesID")%>' ID="Label1" Visible="false"></asp:Label></td>
                            
                            <td><asp:Label runat="server" Text='<%# Eval("Items")%>' ID="ItemName"></asp:Label></td>
                            
                        </tr>
                        
                    </table>
                   
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="btn-div">
        <asp:Button runat="server" Text="Select Package" class="book-btn" OnClick="Unnamed_Click" />
    </div>
</asp:Content>
