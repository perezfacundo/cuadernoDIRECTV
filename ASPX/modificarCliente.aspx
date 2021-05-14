<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="modificarCliente.aspx.vb" Inherits="cuadernoDIRECTV.modificarCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar cliente</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"/>
    
    <link href="../CSS/estilos.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style22 {
            width: 207px;
        }
        .auto-style23 {
            width: 47%;
        }
        .auto-style25 {
            width: 889px;
        }
        .auto-style26 {
            width: 214px;
        }
        .auto-style27 {
            width: 69px;
        }
    </style>

</head>
<body>

    <%--TITULO--%>
    <div class="text-center">
        <h1 class="text-center">CLIENTES DIRECTV</h1>
    </div>

    <form id="form1" runat="server">
        <div class="cajasTexto">
            <table class="auto-style23">
                <tr>
                    <td class="auto-style27">DNI:</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txtDNI" runat="server" Width="189px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="cmdBuscar" runat="server" Text="Buscar cliente" Width="195px" />
                    </td>
                </tr>
            </table>
        </div>

        <div class="mensaje">
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        </div>

        <div class="cajasTexto">

            <table class="auto-style23">
                <tr>
                    <td class="auto-style27">CLIENTE:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="txtCliente" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">CODIGO:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="txtCodigo" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">TELEFONO:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="txtTelefono" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">DEBE:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="txtDebe" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style25">
                        <asp:Button ID="Button2" runat="server" Text="Modificar cliente" Width="201px" />
                    </td>
                </tr>
            </table>

        </div>

        <div class="mensaje">
            <asp:Label ID="lblMensaje2" runat="server" Text=""></asp:Label>
        </div>

        <table style="margin:0px 20px, 20px, 0px">
                <tr>
                    <td class="auto-style5"><asp:HyperLink ID="HyperLink1" runat="server" href="agregarCliente.aspx">Agregar cliente</asp:HyperLink></td>
                    <td class="auto-style6"><asp:HyperLink ID="HyperLink3" runat="server" href="eliminarCliente.aspx">Eliminar cliente</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" href="modificarCliente.aspx">Modificar cliente</asp:HyperLink></td>
                </tr>
            </table>
    </form>
</body>
</html>
