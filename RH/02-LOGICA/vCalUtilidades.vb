Public Class vCalUtilidades
    Dim id_CalUtilidades, descripcion_CalUtilidades As String
    Public Property d_id_CalUtilidades
        Get
            Return id_CalUtilidades
        End Get
        Set(ByVal value)
            id_CalUtilidades = value
        End Set
    End Property

    Public Property d_descripcion_CalUtilidades
        Get
            Return descripcion_CalUtilidades
        End Get
        Set(ByVal value)
            descripcion_CalUtilidades = value
        End Set
    End Property

    Public Sub New(ByVal id_CalUtilidades As String, ByVal descripcion_CalUtilidades As String)
        d_id_CalUtilidades = id_CalUtilidades
        d_descripcion_CalUtilidades = descripcion_CalUtilidades
    End Sub
End Class
