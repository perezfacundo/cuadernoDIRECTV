
Public Class index
    Inherits System.Web.UI.Page

    Dim WithEvents objMantenimientos As New mantenimientos

    Private Sub cmdBuscar_Click(sender As Object, e As EventArgs) Handles cmdBuscar.Click

        Dim tabla As New DataTable
        tabla = objMantenimientos.fBuscar(Val(txtDNI.Text))

        detalle.DataSource = tabla
        detalle.DataBind()

        If detalle.Rows.Count() < 1 Then
            lblMensaje.Text = "El cliente no esta registrado en la base de datos."
        Else
            lblMensaje.Text = ""
        End If

    End Sub

End Class