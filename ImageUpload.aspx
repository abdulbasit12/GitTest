<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ImageUpload.aspx.cs" Inherits="ImageUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #form {
            position: relative;
            width: 50%;
            margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div class="backdiv">
            <h1 class="heading">Manage Your Place</h1>
            <hr />
            <div id="form">
                <asp:FileUpload ID="FileUpload1" class="btn btn-primary btn-block" runat="server" AllowMultiple="True" />
                <br />
                <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Details" />
                <asp:Label ID="PicSuccess" runat="server" Text="Pic Upload Sucessfully" Visible="False"></asp:Label>
                <asp:Label ID="Pic_Error" runat="server" Text="Please select Image" Visible="False"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
