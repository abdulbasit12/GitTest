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
    <div style="height:50%" >
       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="179px">
            <Columns>
                <asp:BoundField DataField="LawnName" HeaderText="Name" />
                <asp:BoundField DataField="LawnName" HeaderText="Lawn" />
                <asp:BoundField DataField="Date" HeaderText="FT" />
            </Columns>--%>
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="55%" >  
     <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="Lawn NAme">  

             <ItemTemplate>  
                 <asp:Label ID="LblCompanyId" runat="server" Text='<%#Bind("LawnName") %>'></asp:Label>  
             </ItemTemplate>  
              </asp:TemplateField> 
         <asp:TemplateField HeaderText="UserNAme">  
             <ItemTemplate>  
                 <asp:Label ID="LblName" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Date">  
             <ItemTemplate>  
                 <asp:Label ID="DTT" runat="server" Text='<%#Bind("Date") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
             </columns> 
        </asp:GridView>
        
    </div>
</asp:Content>

