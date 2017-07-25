<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="catering.aspx.cs" Inherits="catering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>

        $("#button").click(function () {
            alert('button clicked');
        }
        );
    </script>

    <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
        <ItemTemplate>

            <div id="catering-packages">
                <div class="packages">

                    <table>
                        <tr>
                            <td>
                                <button>
                                    <asp:Label ID="Package" class="package-list" runat="server"></asp:Label>
                                    <button>
                                        <button>
                                            <asp:Label ID="Label177" class="package-list" runat="server" Text='<%# Eval("PackageRate") %>'></asp:Label></button>
                                        <%--<asp:Label ID="Imag" Text='<%# Eval("PackageId") %>' runat="server" Font-Size="0px" Visible="false" />--%>
                </div>

            </div>
            </td>
              </tr>
              </table>    

        </ItemTemplate>
    </asp:Repeater>
    <div class="package-detail">
        <h4>Package<label runat="server">1</label></h4>
        <div class="items">
            <table>
                <tr>
                    <td>Chicken Mali Botti</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>