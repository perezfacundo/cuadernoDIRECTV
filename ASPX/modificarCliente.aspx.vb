Imports System.Data.SqlClient

Public Class modificarCliente
    Inherits System.Web.UI.Page

    Dim WithEvents objMantenimientos As New mantenimientos

    Public cliente As String
    Public codigo As String
    Public telefono As String
    Public debe As String

    Protected Sub cmdBuscar_Click(sender As Object, e As EventArgs) Handles cmdBuscar.Click
        lblMensaje.Text = ""

        Dim modificar As Boolean = True
        Dim registro As SqlDataReader
        registro = objMantenimientos.fTraer(txtDNI.Text)

        Try
            If registro.Read() Then
                txtCliente.Text = registro("cliente")
                txtCodigo.Text = registro("codigo")
                txtTelefono.Text = registro("telefono")
                txtDebe.Text = registro("debe")
            End If
        Catch ex As Exception
            lblMensaje.Text = "No se encontro un cliente para el DNI ingresado"
        End Try

    End Sub
End Class