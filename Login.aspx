<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <table style="width:100%;">  
            
                <tr>  
                    <td class="style2">
                        <asp:Label ID="lblName" runat="server" Text="User Name"></asp:Label>
                    </td>  
                    <td>  
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Your Username"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2"> 
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
             
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
                        <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click"  />  
                    </td>  
                    <td>  
                        &nbsp;</td>  
                </tr>  
            </table>  
        </div>
    </form>
</body>
</html>
