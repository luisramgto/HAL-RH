Public Class vTipoJornada
    Dim id_TipoJornada, descripcion_TipoJornada As String
    Public Property d_id_TipoJornada
        Get
            Return id_TipoJornada
        End Get
        Set(ByVal value)
            id_TipoJornada = value
        End Set
    End Property

    Public Property d_descripcion_TipoJornada
        Get
            Return descripcion_TipoJornada
        End Get
        Set(ByVal value)
            descripcion_TipoJornada = value
        End Set
    End Property

    Public Sub New(ByVal id_TipoJornada As String, ByVal descripcion_TipoJornada As String)
        d_id_TipoJornada = id_TipoJornada
        d_descripcion_TipoJornada = descripcion_TipoJornada
    End Sub
End Class
