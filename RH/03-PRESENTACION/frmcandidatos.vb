Imports System.ComponentModel
Imports System.Globalization

Public Class frmcandidatos


    Dim func As New fCandidatos
    Dim dts As New vCandidatos
    Dim dt As New DataTable
    Dim dt_exportar As New DataTable
    Public Shared _instancia As frmcandidatos
    Private WithEvents CamposEmpleado As BindingList(Of vCamposEmpleado)

    'Variables para PAGING
    Public PageCount As Integer
    Public maxRec As Integer
    Public pageSize As Integer
    Public currentPage As Integer
    Public recNo As Integer

    Public Function getinstancia() As frmcandidatos
        If (_instancia Is Nothing) Then
            _instancia = New frmcandidatos()
        End If
        Return _instancia
    End Function

    Private Sub frmcandidatos_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
        _instancia = Nothing
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
    Public Sub frmcandidatos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
      

        Me.WindowState = FormWindowState.Maximized



        With ProgressBar1
            .Visible = False
            .Style = ProgressBarStyle.Blocks
            .Step = 1
            .Minimum = 0
            .Maximum = 100
            .Value = 0
        End With

        CamposEmpleado = (New BindingList(Of vCamposEmpleado))
        CamposEmpleado.Add(New vCamposEmpleado("numero", "NO"))
        CamposEmpleado.Add(New vCamposEmpleado("nombre", "NOMBRE"))
        CamposEmpleado.Add(New vCamposEmpleado("apellido1", "AP PATERNO"))
        CamposEmpleado.Add(New vCamposEmpleado("apellido2", "AP MATERNO"))
        CamposEmpleado.Add(New vCamposEmpleado("descripcion_estados", "ESTADO"))
        cbocampo.DataSource = CamposEmpleado
        cbocampo.DisplayMember = "d_descripcion_CamposEmpleado"
        cbocampo.ValueMember = "d_id_CamposEmpleado"
        cbocampo.SelectedIndex = 0


        Dim dgvcCheckbox As New DataGridViewCheckBoxColumn()
        dgvcCheckbox.HeaderText = "Select"
        dgvcCheckbox.ReadOnly = False
        dgv_NUEVOSITEMS.Columns.Add(dgvcCheckbox)

        FillGrid()
    End Sub
    Public Sub FillGrid()
        dt.Clear()
        dt = func.mostrar_candidatos_noimportados
        'Set the start and max records. 
        pageSize = 5 'txtPageSize.Text
        maxRec = dt.Rows.Count
        PageCount = maxRec \ pageSize

        ' Adjust the page number if the last page contains a partial page.
        If (maxRec Mod pageSize) > 0 Then
            PageCount = PageCount + 1
        End If

        'Initial seeings
        currentPage = 1
        recNo = 0

        ' Display the content of the current page.
        mostrar()
    End Sub


    Public Sub formatodatagrid()
        func.AlternarColorFilasDataGridView(dgv_NUEVOSITEMS)
        With dgv_NUEVOSITEMS
            .MultiSelect = False
            .ColumnHeadersVisible = True

            .Columns("numero").HeaderText = "NO"
            .Columns("numero").DefaultCellStyle.Font = New Font("Arial", 9, FontStyle.Bold)
            .Columns("numero").DefaultCellStyle.ForeColor = Color.Red
            .Columns("fechaalta").HeaderText = "FECHA ALTA"
            .Columns("nombre").HeaderText = "NOMBRE"
            .Columns("apellido1").HeaderText = "AP PATERNO"
            .Columns("apellido2").HeaderText = "AP MATERNO"
            .Columns("descripcion_turno").HeaderText = "TURNO"
            .Columns("descripcion_depto").HeaderText = "DEPARTAMENTO"
            .Columns("descripcion_puesto").HeaderText = "PUESTO"
            .Columns("rfc").HeaderText = "RFC"
            .Columns("imss").HeaderText = "IMMSS"
            .Columns("curp").HeaderText = "CURP"
            .Columns("fechanac").HeaderText = "FECHA NACIMIENTO"
            .Columns("lugarorig").HeaderText = "LUGAR ORIGEN"
            .Columns("descripcion_estados").HeaderText = "ESTADO"
            .Columns("descripcion_ciudad").HeaderText = "CIUDAD"
            .Columns("descripcion_colonia").HeaderText = "COLONIA"
            .Columns("direccion").HeaderText = "DIRECCIÓN"
            .Columns("telefono").HeaderText = "TEL"
            .Columns("descripcion_escolaridad").HeaderText = "ESCOLARIDAD"
            .Columns("carrera").HeaderText = "CARRERA"

            'No permitir la Edición de los Campos desde el DataGried y solo permitir el Checkbox
            .Columns("numero").ReadOnly = True
            .Columns("fechaalta").ReadOnly = True
            .Columns("nombre").ReadOnly = True
            .Columns("apellido1").ReadOnly = True
            .Columns("apellido2").ReadOnly = True
            .Columns("descripcion_turno").ReadOnly = True
            .Columns("descripcion_depto").ReadOnly = True
            .Columns("descripcion_puesto").ReadOnly = True
            .Columns("curp").ReadOnly = True
            .Columns("imss").ReadOnly = True
            .Columns("CURP").ReadOnly = True
            .Columns("fechanac").ReadOnly = True
            .Columns("EDAD").ReadOnly = True
            .Columns("lugarorig").ReadOnly = True
            .Columns("descripcion_estados").ReadOnly = True
            .Columns("descripcion_ciudad").ReadOnly = True
            .Columns("descripcion_colonia").ReadOnly = True
            .Columns("direccion").ReadOnly = True
            .Columns("telefono").ReadOnly = True
            .Columns("descripcion_escolaridad").ReadOnly = True
            .Columns("carrera").ReadOnly = True

            'No visualizar las siguientes columnas
            .Columns("escolarid").Visible = False
            .Columns("colonia").Visible = False
            .Columns("ciudad").Visible = False
            .Columns("estadodir").Visible = False
            .Columns("puesto").Visible = False
            .Columns("depto").Visible = False
            .Columns("turno").Visible = False
            .Columns("credencial").Visible = False
            .Columns("estado").Visible = False
            .Columns("edocivil").Visible = False
            .Columns("sexo").Visible = False
            .Columns("tiponom").Visible = False
            .Columns("ccto").Visible = False
            .Columns("codigopago").Visible = False
            .Columns("codahorro").Visible = False
            .Columns("politica").Visible = False
            .Columns("entidad").Visible = False
            .Columns("nacional").Visible = False
            .Columns("hijos").Visible = False
            .Columns("fechabaja").Visible = False
            .Columns("reingreso").Visible = False
            .Columns("bajaimss").Visible = False
            .Columns("motbaja").Visible = False
            .Columns("sueldo").Visible = False
            .Columns("sueldoimss").Visible = False
            .Columns("sueldoinfo").Visible = False
            .Columns("iniciasuel").Visible = False
            .Columns("sdi_var").Visible = False
            .Columns("motivo").Visible = False
            .Columns("tipo_suel").Visible = False
            .Columns("tipocontra").Visible = False
            .Columns("iniciacon").Visible = False
            .Columns("finalcon").Visible = False
            .Columns("zona").Visible = False
            .Columns("codpostal").Visible = False
            .Columns("aplica_sub").Visible = False
            .Columns("tipo_empl").Visible = False
            .Columns("tjornada").Visible = False
            .Columns("clavebanco").Visible = False
            .Columns("tregimen").Visible = False
            .Columns("regpatron").Visible = False
            .Columns("utilidades").Visible = False
            .Columns("claseries").Visible = False
            .Columns("metodop").Visible = False
            .Columns("status_exportacion").Visible = False
            .Columns("fecha_exportacion").Visible = False
            .Columns("user_lastupdate").Visible = False
            .Columns("motivo_rechazo").Visible = False
            .Columns("descripcion_ccto").Visible = False

        End With
    End Sub

    Public Sub mostrar()

        dgv_NUEVOSITEMS.AllowUserToAddRows = True
        Try
            
            ' Display the content of the current page.
            Dim i As Integer
            Dim startRec As Integer
            Dim endRec As Integer
            Dim dtTemp As DataTable

            'Duplicate or clone the source table to create the temporary table.
            dtTemp = dt.Clone

            If currentPage = PageCount Then
                endRec = maxRec
            Else
                endRec = pageSize * currentPage
            End If

            startRec = recNo

            If dt.Rows.Count <> 0 Then
                'Copy the rows from the source table to fill the temporary table.
                For i = startRec To endRec - 1
                    dtTemp.ImportRow(dt.Rows(i))
                    recNo = recNo + 1
                Next

                dgv_NUEVOSITEMS.DataSource = dtTemp

                txtbuscar.Enabled = True
                lbl_inexistente.Visible = False
                formatodatagrid()

            Else
                dgv_NUEVOSITEMS.DataSource = Nothing
                dgv_NUEVOSITEMS.ColumnHeadersVisible = False
                lbl_inexistente.Visible = True
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        DisplayPageInfo()
        dgv_NUEVOSITEMS.AllowUserToAddRows = False
    End Sub
    Private Sub DisplayPageInfo()
        txtDisplayPageNo.Text = "Página " & currentPage.ToString & "/ " & PageCount.ToString
    End Sub

    Private Sub Btnnuevo_Click(sender As Object, e As EventArgs) Handles Btnnuevo.Click
        Dim frmNuevo As frmmantecandidato = New frmmantecandidato()

        frmNuevo.btn_editar.Visible = False
        frmNuevo.lbl_MOTIVO.Visible = False
        frmNuevo.cmb_MOTIVO.Visible = False
        frmNuevo.lbl_MOTIVO_OTRO.Visible = False
        frmNuevo.txt_OTROMOTIVO.Visible = False
        frmNuevo.btn_insertar.Visible = True

        frmNuevo.ShowDialog()

    End Sub

    Private Sub btn_cancelar_Click(sender As Object, e As EventArgs) Handles btn_cancelar.Click
        Me.Close()
      
    End Sub

    Private Sub btnexportar_Click_1(sender As Object, e As EventArgs) Handles btnexportar.Click
        'func.GridAExcel(datalistado)
        '
        'func.crearfilexls_Grid(dgv_NUEVOSITEMS)

        'Dim frmRangoFecha As frmrangoexport = New frmrangoexport()
        'frmRangoFecha.ShowDialog()

        Dim tipodate1 As String = dtp_FECHA01.Value.Date.ToString("yyyy/MM/dd")
        Dim tipodate2 As String = dtp_FECHA02.Value.Date.ToString("yyyy/MM/dd")

        dts.d_fechaalta = tipodate1
        dts.d_iniciasuel = tipodate2

        progressbar()

        CambiarStatusExport()
        dt_exportar = func.mostrar_candidatos_exportados(dts)
        func.crearfilexls_datatable(dt_exportar)
        ProgressBar1.Visible = False
        FillGrid()

    End Sub
    Public Sub CambiarStatusExport()
        For Each Row As DataGridViewRow In dgv_NUEVOSITEMS.Rows
            If Row.Cells(0).Value = True Then

                'Escribir los empleados que entran a HAL

                Try
                    Dim dts As New vCandidatos

                    dts.d_numero = dgv_NUEVOSITEMS.Rows(Row.Index).Cells(1).Value.ToString
                    dts.d_estado = "A"
                    dts.d_fechabaja = "00/00/0000"
                    dts.d_status_exportacion = 1
                    dts.d_fecha_exportacion = Date.Now
                    dts.d_userlastupdate = UCase(frmlogin.txtlogin.Text)
                    'MessageBox.Show("Chek Habilitado " & " " & dts.d_numero & " " & dts.d_userlastupdate)

                    func.genera_empexpor_empdescar(dts)

                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try

            End If

            If Row.Cells(0).Value = False Then

                'Escribir los empleados rechazados
                Try
                    Dim dts As New vCandidatos
                    Dim dts2 As New vlogin
                    dts.d_numero = dgv_NUEVOSITEMS.Rows(Row.Index).Cells(1).Value.ToString
                    dts.d_estado = "I"
                    dts.d_fechabaja = Date.Now.ToString
                    dts.d_status_exportacion = 1
                    dts.d_fecha_exportacion = Date.Now
                    dts.d_userlastupdate = UCase(frmlogin.txtlogin.Text)
                    'MessageBox.Show("Chek deshabilitado " & " " & dts.d_numero & " " & dts.d_fecha_exportacion)
                    func.genera_empexpor_empdescar(dts)

                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try

            End If

        Next Row
    End Sub


    Private Sub btnbuscar_Click(sender As Object, e As EventArgs) Handles btnbuscar.Click
        buscar()
    End Sub

    Private Sub buscar()
        Try
            Dim func As New fCandidatos
            Dim dt As DataTable = func.buscar(texto:=txtbuscar.Text)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub



    Private Sub btneliminar_Click(sender As Object, e As EventArgs) Handles btneliminar.Click
        Try
            Dim dts As New vCandidatos

            dts.d_numero = dgv_NUEVOSITEMS.SelectedRows(0).Cells(1).Value.ToString

            If (MessageBox.Show("¿Estás seguro de que quieres eliminar el registro No.= " & dts.d_numero & "?", _
                            "Confirmación de usuario", _
                            MessageBoxButtons.YesNo, _
                            MessageBoxIcon.Exclamation) = MsgBoxResult.Yes) Then

                If func.eliminar(dts) Then
                    MsgBox("Registro eliminado correctamente con No. = " & dts.d_numero)
                    maxRec = maxRec - 1
                    FillGrid()
                Else
                    MsgBox("Error al intentar eliminar registro con No. = " & dts.d_numero)
                End If

            Else

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Private Sub btnmostrar_Click(sender As Object, e As EventArgs) Handles btnmostrar.Click
        txtbuscar.Text = ""
        FillGrid()
    End Sub

    Private Sub btneditar_Click(sender As Object, e As EventArgs) Handles btneditar.Click
        editar()
    End Sub
    Private Sub editar()

        Dim frmEditar As frmmantecandidato = New frmmantecandidato()

        frmEditar.btn_insertar.Visible = False
        frmEditar.btn_editar.Visible = True
        frmEditar.lbl_MOTIVO.Visible = False
        frmEditar.cmb_MOTIVO.Visible = False
        frmEditar.lbl_MOTIVO_OTRO.Visible = False
        frmEditar.txt_OTROMOTIVO.Visible = False


        frmEditar.lbl_titulo.Text = "EDITAR REGISTRO DE CANDIDATO"
        frmEditar.txt_NUMERO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(1).Value.ToString
        frmEditar.cmb_STATUS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(23).Value.ToString
        frmEditar.cmb_EDOCIVL.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(24).Value.ToString
        frmEditar.cmb_SEXO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(25).Value.ToString
        frmEditar.txt_NOMBRE.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(3).Value.ToString
        frmEditar.txt_APELLIDO1.Text = dgv_NUEVOSITEMS.SelectedCells.Item(4).Value.ToString
        frmEditar.txt_APELLIDO2.Text = dgv_NUEVOSITEMS.SelectedCells.Item(5).Value.ToString
        frmEditar.cmb_DEPTO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(7).Value.ToString
        frmEditar.cmb_CCTO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(70).Value.ToString
        frmEditar.cmb_PUESTO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(8).Value.ToString
        frmEditar.cmb_TURNO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(6).Value.ToString
        frmEditar.dtp_FECHANAC.Value = dgv_NUEVOSITEMS.SelectedRows(0).Cells(12).Value
        frmEditar.cmb_LUGARORIGEN.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(34).Value
        frmEditar.txt_NACIONAL.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(35).Value
        frmEditar.cmb_HIJOS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(36).Value
        frmEditar.dtp_FECHAALTA.Value = dgv_NUEVOSITEMS.SelectedRows(0).Cells(2).Value
        frmEditar.txt_RFC.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(9).Value
        frmEditar.mtb_IMSS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(10).Value
        frmEditar.mtb_CURP.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(11).Value
        frmEditar.cmb_HIJOS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(36).Value
        frmEditar.txt_SUELDO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(41).Value
        frmEditar.txt_SUELDOIMSS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(42).Value
        frmEditar.txt_SUELDOINFO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(43).Value
        frmEditar.dtp_INICIASUEL.Value = dgv_NUEVOSITEMS.SelectedRows(0).Cells(44).Value
        frmEditar.cmb_HIJOS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(36).Value
        frmEditar.txt_SDI_VAR.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(45).Value
        frmEditar.cmb_TIPOSUELDOS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(47).Value
        frmEditar.cmb_TIPOCONTRATO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(48).Value
        frmEditar.dtp_FECHAINICIOCONTRACTO.Value = dgv_NUEVOSITEMS.SelectedRows(0).Cells(49).Value
        frmEditar.cmb_ZONA.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(51).Value
        frmEditar.cmb_TIPONOMINA.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(26).Value
        frmEditar.cmb_ESTADOS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(52).Value
        frmEditar.cmb_CIUDADES.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(53).Value
        frmEditar.cmb_COLONIAS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(54).Value
        frmEditar.txt_DIRECCION.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(18).Value
        frmEditar.mtb_TELEFONO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(19).Value
        frmEditar.mtb_CODIGOPOSTAL.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(55).Value
        frmEditar.cmb_ESCOLARIDAD.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(56).Value
        frmEditar.txt_CARRERATERMINADA.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(21).Value
        frmEditar.cmb_APLICA_SUB.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(57).Value
        frmEditar.cmb_TIPO_JORNADA.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(59).Value
        frmEditar.cmb_TIPO_REGIMEN.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(61).Value
        frmEditar.cmb_CAL_UTILIDADES.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(63).Value
        frmEditar.cmb_METODOPAGO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(65).Value
        frmEditar.cmb_TIPOEMPLEADO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(58).Value
        frmEditar.cmb_BANCOS.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(60).Value
        frmEditar.txt_REGISTROPATRONAL.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(62).Value
        frmEditar.cmb_CLASERIESGO.Text = dgv_NUEVOSITEMS.SelectedRows(0).Cells(64).Value


        frmEditar.ShowDialog()

    End Sub

    Private Sub dgv_NUEVOSITEMS_CellDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles dgv_NUEVOSITEMS.CellDoubleClick
        editar()
    End Sub

    Private Sub txtbuscar_TextChanged(sender As Object, e As EventArgs) Handles txtbuscar.TextChanged
        Try
            Dim ds As New DataSet
            ds.Tables.Add(dt.Copy)
            Dim dv As New DataView(ds.Tables(0))
            dv.RowFilter = cbocampo.SelectedValue & " like '" & txtbuscar.Text & "%'"
            If dv.Count <> 0 Then
                lbl_inexistente.Visible = False
                dgv_NUEVOSITEMS.DataSource = dv
                formatodatagrid()
            Else
                lbl_inexistente.Visible = True
                dgv_NUEVOSITEMS.DataSource = Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btn_BUSCARRANGO.Click
        Try
            Dim ds As New DataSet
            ds.Tables.Add(dt.Copy)
            Dim dv As New DataView(ds.Tables(0))

            Dim tipodate1 As String = dtp_FECHA01.Value.Date.ToString("yyyy/MM/dd")

            Dim tipodate2 As String = dtp_FECHA02.Value.Date.ToString("yyyy/MM/dd")


            dv.RowFilter = "fechaalta >=  #" & tipodate1 & "#  AND fechaalta <= #" & tipodate2 & "#"

            If dv.Count <> 0 Then
                lbl_inexistente.Visible = False
                dgv_NUEVOSITEMS.DataSource = dv
                formatodatagrid()
            Else
                lbl_inexistente.Visible = True
                dgv_NUEVOSITEMS.DataSource = Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Function CheckFillButton() As Boolean
        'Check if the user clicks the "Fill Grid" button.
        If pageSize = 0 Then
            MessageBox.Show("¡Establecer el tamaño de página y presiona en el botón de la ""Fill Grid"" !")
            CheckFillButton = False
        Else
            CheckFillButton = True
        End If
    End Function

    Private Sub btnFirstPage_Click(sender As Object, e As EventArgs) Handles btnFirstPage.Click
        If Not CheckFillButton() Then Return

        ' Check if you are already at the first page.
        If currentPage = 1 Then
            MessageBox.Show("¡Ya está en la primera página!")
            Return
        End If

        currentPage = 1
        recNo = 0

        mostrar()
    End Sub

    Private Sub btnPreviousPage_Click(sender As Object, e As EventArgs) Handles btnPreviousPage.Click
        If Not CheckFillButton() Then Return

        'If currentPage = PageCount Then
        '    recNo = pageSize * (currentPage - 2)
        'End If

        currentPage = currentPage - 1

        'Check if you are already at the first page.
        If currentPage < 1 Then
            MessageBox.Show("¡Ya está en la primera página!")
            currentPage = 1
            Return
        Else
            recNo = pageSize * (currentPage - 1)
        End If

        mostrar()
    End Sub

    Private Sub btnNextPage_Click(sender As Object, e As EventArgs) Handles btnNextPage.Click

        'If the user did not click the "Fill Grid" button then Return
        If Not CheckFillButton() Then Return

        'Check if the user clicked the "Fill Grid" button.
        If pageSize = 0 Then
            MessageBox.Show("¡Establecer el tamaño de página y presiona en el botón de la ""Fill Grid"" !")
            Return
        End If

        currentPage = currentPage + 1

        If currentPage > PageCount Then
            currentPage = PageCount

            'Check if you are already at the last page.
            If recNo = maxRec Then
                MessageBox.Show("¡Ya estás en la última página!")
                Return
            End If
        End If

        mostrar()
    End Sub

    Private Sub btnLastPage_Click(sender As Object, e As EventArgs) Handles btnLastPage.Click
        If Not CheckFillButton() Then Return

        ' Check if you are already at the last page.
        If recNo = maxRec Then
            MessageBox.Show("¡Ya estás en la última página!")
            Return
        End If

        currentPage = PageCount

        recNo = pageSize * (currentPage - 1)

        mostrar()

    End Sub


End Class