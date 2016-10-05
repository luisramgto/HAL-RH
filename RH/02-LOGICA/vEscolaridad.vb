Public Class vEscolaridad
    Dim id_Escolaridad, descripcion_Escolaridad As String
    Public Property d_id_Escolaridad
        Get
            Return id_Escolaridad
        End Get
        Set(ByVal value)
            id_Escolaridad = value
        End Set
    End Property

    Public Property d_descripcion_Escolaridad
        Get
            Return descripcion_Escolaridad
        End Get
        Set(ByVal value)
            descripcion_Escolaridad = value
        End Set
    End Property
    Public Sub New(ByVal id_Escolaridad As String, ByVal descripcion_Escolaridad As String)
        d_id_Escolaridad = id_Escolaridad
        d_descripcion_Escolaridad = descripcion_Escolaridad
    End Sub
End Class
