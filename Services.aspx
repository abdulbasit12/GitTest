<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="services">
        <h1>Our Services</h1>
        <div class="servies-content">
            <div class="content-div">
                <span class="items">
                    <label>Decoration</label>
                    <img src="services1.png" />
                </span>
                <span class="items">
                   <a href="CateringPackages.aspx"><label>Catering</label> </a> 
                    <img src="services2.png" />
                </span>
                <span class="items">
                    <label>Photography</label>
                    <img src="services3.png" />
                </span>
                <span class="items">
                    <label>Stage Decoration</label>
                    <img src="services4.png" />
                </span>
                <span class="items">
                    <label>Sound & Lights</label>
                    <img src="services5.png" />
                </span>
                <span class="items">
                    <label>Wedding Entrance</label>
                    <img src="services6.png" />
                </span>
            </div>
        </div>
    </div>
</asp:Content>
