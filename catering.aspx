<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="catering.aspx.cs" Inherits="catering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="catering-packages">
        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
            <ItemTemplate>
                <div class="packages">
                    <table>
                        <tr>
                            <td>
                                <asp:Button runat="server" Text="Package " Class="btn-packg" ID="Package" OnClick="Package_Click" />
                                <asp:Label runat="server" Class="lbl-price" Text='<%# Eval("PackageRate") %>' ID="PackageRate"></asp:Label>
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
    <asp:Repeater runat="server" ID="repeater2" OnItemDataBound="repeater2_ItemDataBound">
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
