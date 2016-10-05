Public Class vSexo
    Dim id_Sexo, descripcion_Sexo As String
    Public Property d_id_Sexo
        Get
            Return id_Sexo
        End Get
        Set(ByVal value)
            id_Sexo = value
        End Set
    End Property

    Public Property d_descripcion_Sexo
        Get
            Return descripcion_Sexo
        End Get
        Set(ByVal value)
            descripcion_Sexo = value
        End Set
    End Property

    Public Sub New(ByVal id_Sexo As String, ByVal descripcion_Sexo As String)
        d_id_Sexo = id_Sexo
        d_descripcion_Sexo = descripcion_Sexo
    End Sub
End Class
