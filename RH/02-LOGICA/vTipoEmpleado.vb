Public Class vTipoEmpleado
    Dim id_TipoEmpleado, descripcion_TipoEmpleado As String
    Public Property d_id_TipoEmpleado
        Get
            Return id_TipoEmpleado
        End Get
        Set(ByVal value)
            id_TipoEmpleado = value
        End Set
    End Property

    Public Property d_descripcion_TipoEmpleado
        Get
            Return descripcion_TipoEmpleado
        End Get
        Set(ByVal value)
            descripcion_TipoEmpleado = value
        End Set
    End Property

    Public Sub New(ByVal id_TipoEmpleado As String, ByVal descripcion_TipoEmpleado As String)
        d_id_TipoEmpleado = id_TipoEmpleado
        d_descripcion_TipoEmpleado = descripcion_TipoEmpleado
    End Sub
End Class
