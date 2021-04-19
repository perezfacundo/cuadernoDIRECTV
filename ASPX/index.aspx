<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="cuadernoDIRECTV.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CLIENTES DIRECTV</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"/>
    
    <link href="../CSS/estilos.css" rel="stylesheet" />
</head>
<body>
    
    <%--TITULO--%>
    <div class="text-center">
        <h1 class="text-center">CLIENTES DIRECTV</h1>
    </div>
    
    <form id="form" runat="server">

        <div class="cajasTexto">
            <table style="align-content:center" class="auto-style2">
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="DNI:" For="txtDNI"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:TextBox ID="txtDNI" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td>
            <asp:Button ID="cmdBuscar" runat="server" Text="BUSCAR" Width="149px" />
                    </td>
                </tr>
            </table>

            <table style="margin:0px 20px, 20px, 0px">
                <tr>
                    <td class="auto-style5"><asp:HyperLink ID="HyperLink1" runat="server" href="#">Agregar cliente</asp:HyperLink></td>
                    <td class="auto-style6"><asp:HyperLink ID="HyperLink3" runat="server" href="#">Eliminar cliente</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" href="#">Modificar cliente</asp:HyperLink></td>
                </tr>
            </table>
        </div>

        <div class="hyperlinks">
            
        </div>

        <div class="mensaje">
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        </div>

        <div class="grilla">
            <asp:GridView ID="detalle" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </div>
    </form>

    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>    
