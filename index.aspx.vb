
Public Class index
    Inherits System.Web.UI.Page

    Dim WithEvents objMantenimientos As New mantenimientos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub mostrar_Click(sender As Object, e As EventArgs) Handles mostrar.Click
        Dim tabla As New DataTable
        tabla = objMantenimientos.vercodigo()

        detalle.DataSource = tabla
        detalle.DataBind()

    End Sub
End Class