<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="VenderHome.aspx.cs" Inherits="VenderHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="welcomeVender">
        <ul id="welcome">
            <li class="drop">Welcome
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                !
            <div class="drop-content">
                <a href="#">Profile</a>
                <a href="Default.aspx">LOGOUT</a>
            </div>
            </li>
        </ul>
    </div>
    <div id="divbtn">
    <asp:Button CssClass="buttonvender" runat="server" Text="Upload Images"/>
    </div>
</asp:Content>

