Imports System.Data.SqlClient

Public Class mantenimientos
    Inherits conexiones
    Event MantenimientosError(descripcion As String)

    Public Function fBuscar(nombre As String) As DataTable
        Dim query As String = "SELECT * FROM clientes WHERE cliente='" & nombre & "'"

        Try
            fConectar()
            Dim cmd As New SqlCommand(query, conn)
            cmd.CommandType = CommandType.Text
            Dim resultado As SqlDataReader = cmd.ExecuteReader()
            Dim tabla As DataTable = New DataTable()
            tabla.Load(resultado)
            Return tabla
        Catch ex As Exception
            RaiseEvent MantenimientosError(ex.Message)
            Return Nothing
        Finally
            fDesconectar()
        End Try

    End Function
End Class
