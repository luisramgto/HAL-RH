Imports System.Data.SqlClient
Public Class conexion
    Protected cnn As New SqlConnection
    Protected Function conectado()
        Try
            Dim conexion As String = "Server=test-hal-db; Database=Personal; User Id=itdevelop; Password=KUkz57m9zdDq5Ws"
            'Dim conexion As String = "Server=MINILAP\SQLEXPRESS; Database=Personal; User Id=sa; Password=8998Admin8998"
            cnn = New SqlConnection(conexion)
            cnn.Open()
            Return True
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        End Try
    End Function

    Protected Function desconectado()
        Try
            If cnn.State = ConnectionState.Open Then
                cnn.Close()
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        End Try
    End Function
End Class
