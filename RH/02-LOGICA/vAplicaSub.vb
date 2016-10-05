Public Class vAplicaSub
    Dim id_aplicasub, descripcion_aplicasub As String
    Public Property d_id_aplicasub
        Get
            Return id_aplicasub
        End Get
        Set(ByVal value)
            id_aplicasub = value
        End Set
    End Property

    Public Property d_descripcion_aplicasub
        Get
            Return descripcion_aplicasub
        End Get
        Set(ByVal value)
            descripcion_aplicasub = value
        End Set
    End Property

    Public Sub New(ByVal id_aplicasub As String, ByVal descripcion_aplicasub As String)
        d_id_aplicasub = id_aplicasub
        d_descripcion_aplicasub = descripcion_aplicasub
    End Sub
End Class
