<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="LawnBooking.aspx.cs" Inherits="LawnBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="bookingdiv">
        <h1 class="heading">Booking Form</h1>
        <div id="bookingform">
            <table>
                <tr>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="Organizer Name" ID="txtOrgName"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="CNIC" ID="txtCNIC"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="No. of Guests" ID="txtGuests"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" TextMode="Date"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="Contact #" TextMode="Phone"></asp:TextBox></td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Button runat="server" CssClass="button" Text="Book" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

