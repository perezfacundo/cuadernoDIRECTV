
Public Class index
    Inherits System.Web.UI.Page

    Dim WithEvents objMantenimientos As New mantenimientos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub cmdMostrar_Click(sender As Object, e As EventArgs) Handles cmdMostrar.Click
        Dim nombre As String = txtNombre.Text
        nombre.Trim.ToUpper()

        Dim tabla As New DataTable
        tabla = objMantenimientos.fBuscar(nombre)

        detalle.DataSource = tabla
        detalle.DataBind()

    End Sub
End Class