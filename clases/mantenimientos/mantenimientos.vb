Imports System.Data.SqlClient

Public Class mantenimientos
    Inherits conexiones
    Event MantenimientosError(descripcion As String)

    Dim query As String

    Public Function fAgregar(DNI As Long, cliente As String, codigo As Long, telefono As Long, debe As String)

        query = "INSERT INTO clientes(dni,cliente,codigo,telefono,debe) VALUES (" &
            DNI & ",'" &
            cliente & "'," &
            codigo & "," &
            telefono & "," &
            debe & ")"

        Try
            fConectar()
            Dim cmd As New SqlCommand(query, conn)
            cmd.ExecuteNonQuery()
            Return "El registro fue insertado exitosamente"
        Catch ex As Exception
            RaiseEvent MantenimientosError(ex.Message)
            Return "Ocurrio un error al intentar insertar el registro"
        Finally
            fDesconectar()
        End Try

    End Function

    Public Function fActualizar()



    End Function

    Public Function fEliminar()



    End Function

    Public Function fBuscar(DNI As Long) As DataTable

        query = "SELECT * FROM clientes WHERE DNI=" & DNI

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
