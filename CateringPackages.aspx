<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CateringPackages.aspx.cs" Inherits="CateringPackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="catering">
        <div class="catering-packages">
            <div class="content-div">
                <a href="catering.aspx" class="items">
                    <label>Wedding Menu</label>
                    <img src="services1.png" />
                </a>
                <a href="catering.aspx" class="items">
                    <label>Reception Menu</label>
                    <img src="services2.png" />
                </a>
                <a href="catering.aspx" class="items">
                    <label>Other Menus</label>
                    <img src="services3.png" />
                </a>
                <a href="catering.aspx" class="items">
                    <label>Mehandi Menu</label>
                    <img src="services4.png" />
                </a>
            </div>
        </div>
    </div>
</asp:Content>

