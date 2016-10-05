Public Class vTipoSueldo
    Dim id_tiposueldo, descripcion_tiposueldo As String
    Public Property d_id_tiposueldo
        Get
            Return id_tiposueldo
        End Get
        Set(ByVal value)
            id_tiposueldo = value
        End Set
    End Property

    Public Property d_descripcion_tiposueldo
        Get
            Return descripcion_tiposueldo
        End Get
        Set(ByVal value)
            descripcion_tiposueldo = value
        End Set
    End Property

    Public Sub New(ByVal id_tiposueldo As String, ByVal descripcion_tiposueldo As String)
        d_id_tiposueldo = id_tiposueldo
        d_descripcion_tiposueldo = descripcion_tiposueldo
    End Sub
End Class
