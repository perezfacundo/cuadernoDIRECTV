<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="cuadernoDIRECTV.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="mostrar" runat="server" Text="Mostrar datos" />
            <br />
            <asp:GridView ID="detalle" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
