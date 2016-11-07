<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ImageUpload.aspx.cs" Inherits="ImageUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div></div>
    <div id="main">
        <div id="imagediv">
            <h1 class="heading">Manage Your Place</h1>
            <div id="imageform">
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox3" required="required" CssClass="textbox" runat="server" placeholder="Lawn/Banquet Full Name"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox2" required="required" CssClass="textbox" runat="server" placeholder="Maximum Seating Capacity" TextMode="Number"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox4" required="required" CssClass="textbox" runat="server" placeholder="Complete Address"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" required="required" CssClass="textbox" runat="server" placeholder="Image Name"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox5" required="required" CssClass="textbox" runat="server" placeholder="Account #"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Lawn</asp:ListItem>
                                <asp:ListItem>Banquet</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button class="button" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Details" /></td>
                        <td>
                            <asp:Label ID="PicSuccess" runat="server" Text="Pic Upload Sucessfully" Visible="False"></asp:Label>
                            <asp:Label ID="Pic_Error" runat="server" Text="Please select Image" Visible="False"></asp:Label></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
