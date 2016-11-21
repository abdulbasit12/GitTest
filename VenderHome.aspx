<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VenderHome.aspx.cs" Inherits="VenderHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="welcomeVender">
        <ul id="welcome">
            <li class="drop">Welcome!
            <div class="drop-content">
                <a href="#">Profile</a>
                <asp:Button runat="server" Text="SIGNOUT" />
            </div>
            </li>
        </ul>
    </div>
    <div id="divbtn">
    <asp:Button CssClass="buttonvender" runat="server" Text="Upload Images"/>
    </div>
</asp:Content>

