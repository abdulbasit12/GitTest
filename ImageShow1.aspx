<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageShow1.aspx.cs" Inherits="ImageShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 416px">
    
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="179px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:ImageField DataImageUrlField="uimg" HeaderText="Image">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        </div>
    </form>
</body>
</html>
