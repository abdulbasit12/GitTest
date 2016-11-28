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
                            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" /></td>
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
