<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="cuadernoDIRECTV.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CLIENTES DIRECTV</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"/>
    
</head>
<body>
    
    
    <%--TITULO--%>
    <div class="text-center">
        <h1>CLIENTES DIRECTV</h1>
    </div>
    
    <form id="form" runat="server">

        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese APELLIDO y NOMBRE del cliente"></asp:Label><br /> 
            
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
            
            <asp:Button ID="cmdMostrar" runat="server" Text="Mostrar datos" /><br />

        </div>
        <asp:GridView ID="detalle" runat="server"></asp:GridView>
    </form>

    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>    