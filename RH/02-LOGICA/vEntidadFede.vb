Public Class vEntidadFede
    Dim id_EntidadFede, descripcion_EntidadFede, no_EntidadFede As String
    Public Property d_id_EntidadFede
        Get
            Return id_EntidadFede
        End Get
        Set(ByVal value)
            id_EntidadFede = value
        End Set
    End Property

    Public Property d_descripcion_EntidadFede
        Get
            Return descripcion_EntidadFede
        End Get
        Set(ByVal value)
            descripcion_EntidadFede = value
        End Set
    End Property
    Public Property d_no_EntidadFede
        Get
            Return no_EntidadFede
        End Get
        Set(ByVal value)
            no_EntidadFede = value
        End Set
    End Property

    Public Sub New(ByVal id_EntidadFede As String, ByVal descripcion_EntidadFede As String, ByVal no_EntidadFede As String)
        d_id_EntidadFede = id_EntidadFede
        d_descripcion_EntidadFede = descripcion_EntidadFede
        d_no_EntidadFede = no_EntidadFede
    End Sub
End Class
