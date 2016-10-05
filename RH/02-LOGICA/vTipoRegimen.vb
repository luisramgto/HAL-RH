Public Class vTipoRegimen
    Dim id_TipoRegimen, descripcion_TipoRegimen As String
    Public Property d_id_TipoRegimen
        Get
            Return id_TipoRegimen
        End Get
        Set(ByVal value)
            id_TipoRegimen = value
        End Set
    End Property

    Public Property d_descripcion_TipoRegimen
        Get
            Return descripcion_TipoRegimen
        End Get
        Set(ByVal value)
            descripcion_TipoRegimen = value
        End Set
    End Property

    Public Sub New(ByVal id_TipoRegimen As String, ByVal descripcion_TipoRegimen As String)
        d_id_TipoRegimen = id_TipoRegimen
        d_descripcion_TipoRegimen = descripcion_TipoRegimen
    End Sub
End Class
