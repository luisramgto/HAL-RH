Public Class vTipoNomina
    Dim id_TipoNomina, descripcion_TipoNomina As String
    Public Property d_id_TipoNomina
        Get
            Return id_TipoNomina
        End Get
        Set(ByVal value)
            id_TipoNomina = value
        End Set
    End Property

    Public Property d_descripcion_TipoNomina
        Get
            Return descripcion_TipoNomina
        End Get
        Set(ByVal value)
            descripcion_TipoNomina = value
        End Set
    End Property

    Public Sub New(ByVal id_TipoNomina As String, ByVal descripcion_TipoNomina As String)
        d_id_TipoNomina = id_TipoNomina
        d_descripcion_TipoNomina = descripcion_TipoNomina
    End Sub
End Class
