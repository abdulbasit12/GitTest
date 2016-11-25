<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!doctype html>
    <meta charset="UTF-8"/>
    <div id="main">
        <div id="searchfilter">
            <div id="search-area">All Areas &emsp; &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-area">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Areas</li>
                </ul>
                <h4 style="padding-top: 10px; padding-left: 5px;">Popular Areas</h4>
            </div>
            <div id="search-capacity">All Capacities &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-capactiy">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Capacities</li>
                </ul>
            </div>
            <div id="search-button"><asp:Button runat="server" Text="Search" style="height:50px; line-height: 30px; border-radius:0px;s" CssClass="button" /></div>
        </div>
    </div>
</asp:Content>
