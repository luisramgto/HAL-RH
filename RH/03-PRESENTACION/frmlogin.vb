Public Class frmlogin

    ' TODO: Insert code to perform custom authentication using the provided username and password 
    ' (See http://go.microsoft.com/fwlink/?LinkId=35339).  
    ' The custom principal can then be attached to the current thread's principal as follows: 
    '     My.User.CurrentPrincipal = CustomPrincipal
    ' where CustomPrincipal is the IPrincipal implementation used to perform authentication. 
    ' Subsequently, My.User will return identity information encapsulated in the CustomPrincipal object
    ' such as the username, display name, etc.

    Private Sub OK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK.Click
        If txtlogin.Text = Nothing And txtpassword.Text = Nothing Then
            MessageBox.Show("Por favor ingresa tu Usuario y Contraseña para ingresar al sistema.", _
                            "Mensaje", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)

        Else
            Try
                Dim dts As New vlogin
                Dim func As New flogin
                dts.gusername = txtlogin.Text
                dts.gpassword = txtpassword.Text

                If func.validarusuario(dts) = True Then
                    Dim forinicio As New frminicio
                    forinicio.Show()
                    Me.Hide()
                Else
                    MessageBox.Show("Acceso denegado - Su Usuario o Contraseña incorrectos" & vbCrLf & "Si persiste el error por favor contactar con el área de soporte técnico de HAL México.", _
                            "Error de inicio de sesión", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)

                    txtpassword.Clear()
                End If
            Catch ex As Exception
                MsgBox(ex.Message)

            End Try
        End If
    End Sub

    Private Sub Cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel.Click
        Me.Close()
    End Sub

    
    Private Sub frmlogin_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txtlogin.Text = "admin"
        txtpassword.Text = "8998admin8998"
    End Sub
End Class
