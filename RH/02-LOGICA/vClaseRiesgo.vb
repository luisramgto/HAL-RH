Public Class vClaseRiesgo
    Dim id_ClaseRiesgo, descripcion_ClaseRiesgo As String
    Public Property d_id_ClaseRiesgo
        Get
            Return id_ClaseRiesgo
        End Get
        Set(ByVal value)
            id_ClaseRiesgo = value
        End Set
    End Property

    Public Property d_descripcion_ClaseRiesgo
        Get
            Return descripcion_ClaseRiesgo
        End Get
        Set(ByVal value)
            descripcion_ClaseRiesgo = value
        End Set
    End Property
    Public Sub New(ByVal id_ClaseRiesgo As String, ByVal descripcion_ClaseRiesgo As String)
        d_id_ClaseRiesgo = id_ClaseRiesgo
        d_descripcion_ClaseRiesgo = descripcion_ClaseRiesgo
    End Sub
End Class
