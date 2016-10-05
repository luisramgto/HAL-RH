Public Class vedocivil
    Dim id_edocivil, descripcion_edocivil As String
    Public Property d_id_edocivil
        Get
            Return id_edocivil
        End Get
        Set(ByVal value)
            id_edocivil = value
        End Set
    End Property

    Public Property d_descripcion_edocivil
        Get
            Return descripcion_edocivil
        End Get
        Set(ByVal value)
            descripcion_edocivil = value
        End Set
    End Property
    Public Sub New(ByVal id_edocivil As String, ByVal descripcion_edocivil As String)
        d_id_edocivil = id_edocivil
        d_descripcion_edocivil = descripcion_edocivil
    End Sub
End Class
