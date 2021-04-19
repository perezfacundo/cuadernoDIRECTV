Public Class eliminarCliente
    Inherits System.Web.UI.Page

    Dim WithEvents objMantenimientos As New mantenimientos

    Private Sub cmdEliminar_Click(sender As Object, e As EventArgs) Handles cmdEliminar.Click
        lblMensaje.Text = objMantenimientos.fEliminar(Val(txtDNI.Text))
    End Sub

End Class