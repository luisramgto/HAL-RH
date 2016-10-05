Public Class vZona
    Dim id_Zona, descripcion_Zona As String
    Public Property d_id_Zona
        Get
            Return id_Zona
        End Get
        Set(ByVal value)
            id_Zona = value
        End Set
    End Property

    Public Property d_descripcion_Zona
        Get
            Return descripcion_Zona
        End Get
        Set(ByVal value)
            descripcion_Zona = value
        End Set
    End Property

    Public Sub New(ByVal id_Zona As String, ByVal descripcion_Zona As String)
        d_id_Zona = id_Zona
        d_descripcion_Zona = descripcion_Zona
    End Sub
End Class
