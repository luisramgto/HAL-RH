Imports System.Data.SqlClient
Public Class flogin
    Inherits conexion
    Dim cmd As New SqlCommand
    Public Function validarusuario(ByVal dts As vlogin)
        Try
            conectado()
            cmd = New SqlCommand("validar_usuarios")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            cmd.Parameters.AddWithValue("@log", dts.gusername)
            cmd.Parameters.AddWithValue("@pas", dts.gpassword)

            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.HasRows = True Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            desconectado()
        End Try
    End Function
    
End Class

