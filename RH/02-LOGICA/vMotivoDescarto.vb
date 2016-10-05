Public Class vMotivoDescarto
    Dim id_MotivoDescarto, descripcion_MotivoDescarto As String
    Public Property d_id_MotivoDescarto
        Get
            Return id_MotivoDescarto
        End Get
        Set(ByVal value)
            id_MotivoDescarto = value
        End Set
    End Property

    Public Property d_descripcion_MotivoDescarto
        Get
            Return descripcion_MotivoDescarto
        End Get
        Set(ByVal value)
            descripcion_MotivoDescarto = value
        End Set
    End Property

    Public Sub New(ByVal id_MotivoDescarto As String, ByVal descripcion_MotivoDescarto As String)
        d_id_MotivoDescarto = id_MotivoDescarto
        d_descripcion_MotivoDescarto = descripcion_MotivoDescarto
    End Sub
End Class
