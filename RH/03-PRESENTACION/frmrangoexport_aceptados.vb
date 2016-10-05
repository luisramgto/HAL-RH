Public Class frmrangoexport_aceptados
    Dim func As New fCandidatos
    Dim dts As New vCandidatos
    Dim dt_exportar As New DataTable
    Private Sub frmrangoexport_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        MessageBox.Show("Recuerde marcar con anterioridad los registros que desea importar a Excel para cargar al sistema SIASA – NOMIPLUS ME." & vbCrLf & "Los registros no seleccionados serán guardados en el apartado de -CANDIDATOS RECHAZADOS- y podrá regresar el registro para exportar a Excel cambiando su Status de –INACTIVO- a –ACTIVO- ", _
                           "Recomendación", _
                           MessageBoxButtons.OK, _
                           MessageBoxIcon.Exclamation)
        ProgressBar1.Visible = False
        With ProgressBar1
            .Style = ProgressBarStyle.Blocks
            .Step = 1
            .Minimum = 0
            .Maximum = 100
            .Value = 0
        End With
    End Sub
    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim vfrmcandidatos As frmcandidatos = frmcandidatos.getinstancia()
        vfrmcandidatos.maxRec = vfrmcandidatos.maxRec + 1
        vfrmcandidatos.FillGrid()
        Me.Close()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim tipodate1 As String = dtp_DESDE.Value.Date.ToString("yyyy/MM/dd")
        Dim tipodate2 As String = dtp_HASTA.Value.Date.ToString("yyyy/MM/dd")

        dts.d_fechaalta = tipodate1
        dts.d_iniciasuel = tipodate2

        progressbar()


        'Dim vfrmcandidatos As frmcandidatos = frmcandidatos.getinstancia()
        'vfrmcandidatos.CambiarStatusExport()
        dt_exportar = func.mostrar_candidatos_exportados(dts)
        func.crearfilexls_datatable(dt_exportar)
        ProgressBar1.Visible = False
    End Sub

    Private Sub progressbar()
        ProgressBar1.Visible = True
        With ProgressBar1
            .Style = ProgressBarStyle.Blocks
            .Step = 1
            .Minimum = 0
            .Maximum = 100
            .Value = 0
        End With
        'if you repress the button now, it won't restart now
        Do
            'ALL events in your form will ahve to wait until this loop is completed!
            Threading.Thread.Sleep(100)
            ProgressBar1.PerformStep() 'can't use this if ProgressBar1.Style = ProgressBarStyle.Marquee

        Loop Until ProgressBar1.Value >= ProgressBar1.Maximum
    End Sub
End Class