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

    Public Function fModificar(DNI As Long)

        query = "SELECT * FROM clientes WHERE dni=" & DNI

        Dim cadenaResultado As String = ""

        Try
            fConectar()
            Dim cmd As New SqlCommand(query, conn)
            Dim registro As SqlDataReader = cmd.ExecuteReader
            Return registro
        Catch ex As Exception
            RaiseEvent MantenimientosError(ex.Message)
            Return "Ha ocurrido un error. Por favor intente de nuevo"
        Finally
            fDesconectar()
        End Try

    End Function

    Public Function fEliminar(DNI As Long)

        query = "DELETE FROM clientes WHERE dni=" & DNI

        Try
            fConectar()
            Dim cmd As New SqlCommand(query, conn)
            Dim cant As Integer = cmd.ExecuteNonQuery()
            Return "El cliente ha sido borrado"
        Catch ex As Exception
            RaiseEvent MantenimientosError(ex.Message)
            Return "No existe un cliente para el DNI ingresado"
        Finally
            fDesconectar()
        End Try

    End Function

    Public Function fBuscar(DNI As Long) As DataTable

        query = "SELECT * FROM clientes WHERE DNI=" & DNI

        Try
            fConectar()
            Dim cmd As New SqlCommand(query, conn)
            cmd.CommandType = CommandType.Text
            Dim registro As SqlDataReader = cmd.ExecuteReader()
            Dim tabla As DataTable = New DataTable()
            tabla.Load(registro)
            Return tabla
        Catch ex As Exception
            RaiseEvent MantenimientosError(ex.Message)
            Return Nothing
        Finally
            fDesconectar()
        End Try

    End Function

    Public Function fTraer(DNI As Long) As SqlDataReader

        query = "SELECT * FROM clientes WHERE dni=" & DNI

        Try
            fConectar()
            Dim cmd As New SqlCommand(query, conn)
            Dim registro As SqlDataReader = cmd.ExecuteReader()
            Return registro
        Catch ex As Exception
            RaiseEvent MantenimientosError(ex.Message)
            Return Nothing
        Finally
            fDesconectar()
        End Try

    End Function

End Class
