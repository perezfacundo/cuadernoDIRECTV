<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="cuadernoDIRECTV.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 62%;
        }
        .auto-style2 {
            width: 103px;
        }
        .auto-style3 {
            width: 258px;
        }
        .auto-style4 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">USER</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUser" runat="server" Width="253px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPassword" runat="server" Width="253px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="cmdLogin" runat="server" CssClass="auto-style4" Text="LOGIN" Width="260px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />

            <asp:Label ID="lblResultado" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
