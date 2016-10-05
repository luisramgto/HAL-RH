Public Class vstatus
    Dim id_estado, descripcion_estado As String
    Public Property d_id_estado
        Get
            Return id_estado
        End Get
        Set(ByVal value)
            id_estado = value
        End Set
    End Property

    Public Property d_descripcion_estado
        Get
            Return descripcion_estado
        End Get
        Set(ByVal value)
            descripcion_estado = value
        End Set
    End Property

    Public Sub New(ByVal id_estado As String, ByVal descripcion_estado As String)
        d_id_estado = id_estado
        d_descripcion_estado = descripcion_estado
    End Sub
End Class
