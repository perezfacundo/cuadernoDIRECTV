<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="eliminarCliente.aspx.vb" Inherits="cuadernoDIRECTV.eliminarCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eliminar cliente</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"/>
    
    <link href="../CSS/estilos.css" rel="stylesheet" />
</head>
<body>

    <%--TITULO--%>
    <div class="text-center">
        <h1 class="text-center">CLIENTES DIRECTV</h1>
    </div>

    <form id="form1" runat="server">
        <div class="">

            <table class="auto-style19">
                <tr>
                    <td class="auto-style17">DNI:</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtDNI" runat="server" Width="167px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="cmdEliminar" runat="server" Text="Eliminar cliente" CssClass="offset-sm-0" />
                    </td>
                </tr>
            </table>

            <table style="margin:0px 20px, 20px, 0px">
                <tr>
                    <td class="auto-style5"><asp:HyperLink ID="HyperLink1" runat="server" href="agregarCliente.aspx">Agregar cliente</asp:HyperLink></td>
                    <td class="auto-style6"><asp:HyperLink ID="HyperLink3" runat="server" href="eliminarCliente.aspx">Eliminar cliente</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" href="modificarCliente.aspx">Modificar cliente</asp:HyperLink></td>
                </tr>
            </table>
        </div>

        <div class="mensaje">
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        </div>
    </form>

    <div class="hyperlinks">
            <asp:HyperLink ID="HyperLink4" runat="server" href="buscarCliente.aspx">Volver al inicio</asp:HyperLink>
    </div>
</body>
</html>
