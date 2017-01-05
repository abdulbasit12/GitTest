<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="LawnBooking.aspx.cs" Inherits="LawnBooking" %>

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
    <div class="backdiv">
        <h1 class="heading">Booking Form</h1>
        <hr />
        <div id="form">
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox runat="server" class="form-control" required="required" placeholder="Organizer Name" ID="txtOrgName"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
                <asp:TextBox runat="server" class="form-control" required="required" placeholder="CNIC" ID="txtCNIC"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                <asp:TextBox runat="server" class="form-control" required="required" placeholder="No. of Guests" ID="txtGuests"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                <asp:TextBox runat="server" class="form-control" required="required" TextMode="Date"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                <asp:TextBox runat="server" class="form-control" required="required" placeholder="Contact #" TextMode="Phone"></asp:TextBox>
            </div>
            <br />
            <asp:Button runat="server" class="btn btn-primary btn-block" Text="Book" />
        </div>
    </div>
</asp:Content>

