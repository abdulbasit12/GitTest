<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="bookingdiv">
        <h1 class="heading">Booking Form</h1>
        <div id="bookingform">
            <table>
                <tr>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="Organizer Name" ID="txtOrgName" ReadOnly="True"></asp:TextBox></td>
                 <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="UserName" ID="txtUser"></asp:TextBox></td>
                       <td>
                                                <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="CNIC" ID="txtCNIC"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="No. of Guests" ID="txtGuests"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" TextMode="Date" ID="txtDate" AutoPostBack="True"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="textbox" required="required" placeholder="Contact #" TextMode="Phone" ID="txtContact"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button runat="server" CssClass="button" Text="Book" OnClick="Unnamed3_Click" /></td>
                </tr>
            </table>
        </div>
    </div>


</asp:Content>

