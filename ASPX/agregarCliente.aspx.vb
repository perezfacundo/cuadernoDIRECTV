'Imports ScriptResourceMapping ?

Public Class agregarCliente
    Inherits System.Web.UI.Page

    Dim WithEvents objMantenimientos As New mantenimientos

    'Dim jquery As New ScriptResourceMapping No funciono


    Protected Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        lblMensaje.Text = objMantenimientos.fAgregar(Val(txtDNI.Text), txtCliente.Text, Val(txtCodigo.Text), Val(txtTelefono.Text), Val(txtDebe.Text))

        txtDNI.Text = ""
        txtCliente.Text = ""
        txtCodigo.Text = ""
        txtTelefono.Text = ""
        txtDebe.Text = ""

    End Sub

End Class