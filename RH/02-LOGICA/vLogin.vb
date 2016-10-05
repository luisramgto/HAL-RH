Public Class vlogin
    Dim username As String
    Dim password As String

    Public Property gusername
        Get
            Return username
        End Get
        Set(ByVal value)
            username = value
        End Set

    End Property
    Public Property gpassword
        Get
            Return password
        End Get
        Set(ByVal value)
            password = value
        End Set
    End Property

    Public Sub New(ByVal username As String, ByVal password As String)
        gusername = username
        gpassword = password
    End Sub
    Public Sub New()

    End Sub
End Class
