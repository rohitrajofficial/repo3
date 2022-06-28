<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LoginApp.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1" style="align-content:center">
                <tr>  
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                    </td>  
                    <td>  
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td><asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>  
                     <td> <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td><asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td> <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label></td>  
                    <td>  
                        <asp:DropDownList ID="ddlCity" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Mysore" Value="Mysore"></asp:ListItem>  
                            <asp:ListItem Text="Hubli" Value="hubli"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
                <tr>  
                    <td> <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label></td>  
                    <td>  
                        <asp:RadioButtonList ID="rblGender" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
                <tr>  
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email Id"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />  
                        
                    </td>  
                    <td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
                </tr>  
            </table>  
        </div>  
    </form>  
</body>
</html>
