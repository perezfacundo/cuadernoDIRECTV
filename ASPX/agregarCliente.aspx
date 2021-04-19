<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="agregarCliente.aspx.vb" Inherits="cuadernoDIRECTV.agregarCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar cliente</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"/>
    
    <link href="../CSS/estilos.css" rel="stylesheet" />

</head>
<body>

    <%--TITULO--%>
    <div class="text-center">
        <h1 class="text-center">CLIENTES DIRECTV</h1>
    </div>

    <form id="form1" runat="server">
        <div class="cajasTexto">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style8">DNI:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtDNI" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="RequiredFieldValidator">Este campo no puede estar vacío</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">CLIENTE:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtCliente" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="rfvCliente" runat="server" ControlToValidate="txtCliente" ErrorMessage="RequiredFieldValidator">Este campo no puede estar vacío</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">CODIGO:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtCodigo" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RequiredFieldValidator">Este campo no puede estar vacío</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">TELEFONO:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtTelefono" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">DEBE:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtDebe" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    <td>

                    </td>
                </tr>
            </table>
        </div>

        <div class="botones">
            <asp:Button ID="cmdAgregar" runat="server" Text="Agregar cliente"/>
        </div>

        <div class="mensaje">
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        </div>

    </form>

    <div class="hyperlinks">
            <asp:HyperLink ID="HyperLink1" runat="server" href="buscarCliente.aspx">Volver al inicio</asp:HyperLink>
    </div>

</body>
</html>
