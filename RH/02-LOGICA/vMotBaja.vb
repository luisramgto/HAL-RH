Public Class vMotBaja
    Dim id_motbaja, descripcion_motbaja As String
    Public Property d_id_motbaja
        Get
            Return id_motbaja
        End Get
        Set(ByVal value)
            id_motbaja = value
        End Set
    End Property

    Public Property d_descripcion_motbaja
        Get
            Return descripcion_motbaja
        End Get
        Set(ByVal value)
            descripcion_motbaja = value
        End Set
    End Property

    Public Sub New(ByVal id_motbaja As String, ByVal descripcion_motbaja As String)
        d_id_motbaja = id_motbaja
        d_descripcion_motbaja = descripcion_motbaja
    End Sub
End Class
