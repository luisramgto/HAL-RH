Public Class vCamposEmpleado
    Dim id_CamposEmpleado, descripcion_CamposEmpleado As String
    Public Property d_id_CamposEmpleado
        Get
            Return id_CamposEmpleado
        End Get
        Set(ByVal value)
            id_CamposEmpleado = value
        End Set
    End Property

    Public Property d_descripcion_CamposEmpleado
        Get
            Return descripcion_CamposEmpleado
        End Get
        Set(ByVal value)
            descripcion_CamposEmpleado = value
        End Set
    End Property

    Public Sub New(ByVal id_CamposEmpleado As String, ByVal descripcion_CamposEmpleado As String)
        d_id_CamposEmpleado = id_CamposEmpleado
        d_descripcion_CamposEmpleado = descripcion_CamposEmpleado
    End Sub
End Class
