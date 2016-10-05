Public Class vTipoContrato
    Dim id_TipoContrato, descripcion_TipoContrato As String
    Public Property d_id_TipoContrato
        Get
            Return id_TipoContrato
        End Get
        Set(ByVal value)
            id_TipoContrato = value
        End Set
    End Property

    Public Property d_descripcion_TipoContrato
        Get
            Return descripcion_TipoContrato
        End Get
        Set(ByVal value)
            descripcion_TipoContrato = value
        End Set
    End Property

    Public Sub New(ByVal id_TipoContrato As String, ByVal descripcion_TipoContrato As String)
        d_id_TipoContrato = id_TipoContrato
        d_descripcion_TipoContrato = descripcion_TipoContrato
    End Sub
End Class
