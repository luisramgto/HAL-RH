Imports System.Text.RegularExpressions
Imports System.ComponentModel
Imports System.Globalization

Public Class frmmantecandidato
    Dim func As New fcandidatos
    Private dt As New DataTable
    Private WithEvents Status As BindingList(Of vstatus)
    Private WithEvents AplicaSub As BindingList(Of vAplicaSub)
    Private WithEvents CalUtilidades As BindingList(Of vCalUtilidades)
    Private WithEvents ClaseRiesgo As BindingList(Of vClaseRiesgo)
    Private WithEvents Edocivil As BindingList(Of vedocivil)
    Private WithEvents Escolaridad As BindingList(Of vEscolaridad)
    Private WithEvents Motbaja As BindingList(Of vMotBaja)
    Private WithEvents Sexo As BindingList(Of vSexo)
    Private WithEvents TipoContrato As BindingList(Of vTipoContrato)
    Private WithEvents TipoEmpleado As BindingList(Of vTipoEmpleado)
    Private WithEvents TipoJornada As BindingList(Of vTipoJornada)
    Private WithEvents TipoRegimen As BindingList(Of vTipoRegimen)
    Private WithEvents TipoSueldo As BindingList(Of vTipoSueldo)
    Private WithEvents Zona As BindingList(Of vZona)
    Private WithEvents EntidadFede As BindingList(Of vEntidadFede)



    Private Sub btn_cancelar_Click(sender As Object, e As EventArgs)
        Me.Close()
    End Sub
    Public Sub frmmantecandidato_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        cargar()
    End Sub
    Public Sub cargar()
        If btn_insertar.Visible = True Then
            'Declaración de variables por default
            'txt_OTROMOTIVO.Enabled = False

            'Cargar todos los combobox
            'cmb_ESTADO.Items.Add("Seleccione...")
            'cmb_ESTADO.Items.Add("Activo")
            'cmb_ESTADO.Items.Add("Inactivo")
            'cmb_ESTADO.SelectedIndex = 1

            cmb_STATUS.Enabled = False

            dt = func.mostrar_tabla("recomendar_num")
            If dt.Rows.Count <> 0 Then
                txt_NUMERO.Text = "0" & dt.Rows(0)(0).ToString

            End If

            txt_CREDENCIAL.Text = txt_NUMERO.Text

            dtp_FECHAALTA.Format = DateTimePickerFormat.Custom
            dtp_FECHAALTA.CustomFormat = "dd/MM/yyyy"
            dtp_FECHAALTA.Value = DateTime.Now

            dtp_FECHAINICIOCONTRACTO.Format = DateTimePickerFormat.Custom
            dtp_FECHAINICIOCONTRACTO.CustomFormat = "dd/MM/yyyy"
            dtp_FECHAINICIOCONTRACTO.Value = DateTime.Now

            dtp_FECHANAC.Format = DateTimePickerFormat.Custom
            dtp_FECHANAC.CustomFormat = "dd/MM/yyyy"
            dtp_FECHANAC.Value = DateTime.Now

            dtp_INICIASUEL.Format = DateTimePickerFormat.Custom
            dtp_INICIASUEL.CustomFormat = "dd/MM/yyyy"
            dtp_INICIASUEL.Value = DateTime.Now

            


            Status = New BindingList(Of vstatus)
            Status.Add(New vstatus("A", "Activo"))
            Status.Add(New vstatus("I", "Inactivo"))
            cmb_STATUS.DataSource = Status
            cmb_STATUS.DisplayMember = "d_descripcion_estado"
            cmb_STATUS.ValueMember = "d_id_estado"
            cmb_STATUS.SelectedIndex = 0


            Edocivil = New BindingList(Of vedocivil)
            Edocivil.Add(New vedocivil("S", "Soltero"))
            Edocivil.Add(New vedocivil("C", "Casado"))
            Edocivil.Add(New vedocivil("D", "Divorciado"))
            Edocivil.Add(New vedocivil("V", "Viudo"))
            Edocivil.Add(New vedocivil("U", "Union Libre"))
            cmb_EDOCIVL.DataSource = Edocivil
            cmb_EDOCIVL.DisplayMember = "d_descripcion_edocivil"
            cmb_EDOCIVL.ValueMember = "d_id_edocivil"
            cmb_EDOCIVL.Text = "Seleccione..."



            Sexo = New BindingList(Of vSexo)
            Sexo.Add(New vSexo("F", "Femenino"))
            Sexo.Add(New vSexo("M", "Masculino"))
            cmb_SEXO.DataSource = Sexo
            cmb_SEXO.DisplayMember = "d_descripcion_Sexo"
            cmb_SEXO.ValueMember = "d_id_Sexo"
            cmb_SEXO.Text = "Seleccione..."



            Motbaja = New BindingList(Of vMotBaja)
            Motbaja.Add(New vMotBaja("0", "N/A"))
            Motbaja.Add(New vMotBaja("1", "Término de contracto"))
            Motbaja.Add(New vMotBaja("2", "Separación Voluntaria"))
            Motbaja.Add(New vMotBaja("3", "Abandono de Empleo"))
            Motbaja.Add(New vMotBaja("4", "Defunción"))
            cmb_MOTBAJA.DataSource = Motbaja
            cmb_MOTBAJA.DisplayMember = "d_descripcion_MotBaja"
            cmb_MOTBAJA.ValueMember = "d_id_MotBaja"
            cmb_MOTBAJA.SelectedIndex = 0


            cmb_HIJOS.SelectedIndex = 0


            dt = func.mostrar_tabla("depto")
            If dt.Rows.Count <> 0 Then
                cmb_DEPTO.DataSource = dt
                cmb_DEPTO.DisplayMember = "descripcion_depto"
                cmb_DEPTO.ValueMember = "id_departamento"
                cmb_DEPTO.Text = "Seleccione..."
            End If

            dt = func.mostrar_tabla("centro_costos")
            If dt.Rows.Count <> 0 Then
                cmb_CCTO.DataSource = dt
                cmb_CCTO.DisplayMember = "descripcion_ccto"
                cmb_CCTO.ValueMember = "id_ccto"
                cmb_CCTO.Text = "Seleccione..."
            End If

            dt = func.mostrar_tabla("turno")
            If dt.Rows.Count <> 0 Then
                cmb_TURNO.DataSource = dt
                cmb_TURNO.DisplayMember = "descripcion_turno"
                cmb_TURNO.ValueMember = "id_turno"
                cmb_TURNO.Text = "Seleccione..."
            End If

            dt = func.mostrar_tabla("puesto")
            If dt.Rows.Count <> 0 Then
                cmb_PUESTO.DataSource = dt
                cmb_PUESTO.DisplayMember = "descripcion_puesto"
                cmb_PUESTO.ValueMember = "id_puesto"
                cmb_PUESTO.Text = "Seleccione..."
            End If

            EntidadFede = New BindingList(Of vEntidadFede)
            EntidadFede.Add(New vEntidadFede("AS", "AGUASCALIENTES", "01"))
            EntidadFede.Add(New vEntidadFede("BC", "BAJA CALIFORNIA", "02"))
            EntidadFede.Add(New vEntidadFede("BS", "BAJA CALIFORNIA SUR", "03"))
            EntidadFede.Add(New vEntidadFede("CC", "CAMPECHE", "04"))
            EntidadFede.Add(New vEntidadFede("CL", "COAHUILA", "05"))
            EntidadFede.Add(New vEntidadFede("CM", "COLIMA", "06"))
            EntidadFede.Add(New vEntidadFede("CS", "CHIAPAS", "07"))
            EntidadFede.Add(New vEntidadFede("CH", "CHIHUAHUA", "08"))
            EntidadFede.Add(New vEntidadFede("DF", "DISTRITO FEDERAL", "09"))
            EntidadFede.Add(New vEntidadFede("DG", "DURANGO", "10"))
            EntidadFede.Add(New vEntidadFede("GT", "GUANAJUATO", "11"))
            EntidadFede.Add(New vEntidadFede("GR", "GUERRERO", "12"))
            EntidadFede.Add(New vEntidadFede("HG", "HIDALGO", "13"))
            EntidadFede.Add(New vEntidadFede("JC", "JALISCO", "14"))
            EntidadFede.Add(New vEntidadFede("MC", "MÉXICO", "15"))
            EntidadFede.Add(New vEntidadFede("MN", "MICHOACÁN", "16"))
            EntidadFede.Add(New vEntidadFede("MS", "MORELOS", "17"))
            EntidadFede.Add(New vEntidadFede("NT", "NAYARIT", "18"))
            EntidadFede.Add(New vEntidadFede("NL", "NUEVO LEÓN", "19"))
            EntidadFede.Add(New vEntidadFede("OC", "OAXACA", "20"))
            EntidadFede.Add(New vEntidadFede("PL", "PUEBLA", "21"))
            EntidadFede.Add(New vEntidadFede("QT", "QUERÉTARO", "22"))
            EntidadFede.Add(New vEntidadFede("QR", "QUINTANA ROO", "23"))
            EntidadFede.Add(New vEntidadFede("SP", "SAN LUIS POTOSI", "24"))
            EntidadFede.Add(New vEntidadFede("SL", "SINALOA", "25"))
            EntidadFede.Add(New vEntidadFede("SR", "SONORA", "26"))
            EntidadFede.Add(New vEntidadFede("TC", "TABASCO", "27"))
            EntidadFede.Add(New vEntidadFede("TS", "TAMAULIPAS", "28"))
            EntidadFede.Add(New vEntidadFede("TL", "TLAXCALA", "29"))
            EntidadFede.Add(New vEntidadFede("VZ", "VERACRUZ", "30"))
            EntidadFede.Add(New vEntidadFede("YN", "YUCÁTAN", "31"))
            EntidadFede.Add(New vEntidadFede("ZS", "ZACATECAS", "32"))
            EntidadFede.Add(New vEntidadFede("NE", "NACIDO EN EL EXTRANJERO", "00"))

            cmb_LUGARORIGEN.DataSource = EntidadFede
            cmb_LUGARORIGEN.DisplayMember = "d_descripcion_EntidadFede"
            cmb_LUGARORIGEN.ValueMember = "d_id_EntidadFede"
            cmb_LUGARORIGEN.Text = "Seleccione..."


            dt = func.mostrar_tabla("motivo_descarto")
            If dt.Rows.Count <> 0 Then
                cmb_MOTIVO.DataSource = dt
                cmb_MOTIVO.DisplayMember = "descripcion_motivo"
                cmb_MOTIVO.ValueMember = "id_motivo"
                cmb_MOTIVO.Text = "Seleccione..."
            End If


            TipoSueldo = New BindingList(Of vTipoSueldo)
            TipoSueldo.Add(New vTipoSueldo("1", "Fijo"))
            TipoSueldo.Add(New vTipoSueldo("2", "Variable"))
            TipoSueldo.Add(New vTipoSueldo("3", "Mixto"))
            cmb_TIPOSUELDOS.DataSource = TipoSueldo
            cmb_TIPOSUELDOS.DisplayMember = "d_descripcion_TipoSueldo"
            cmb_TIPOSUELDOS.ValueMember = "d_id_TipoSueldo"
            cmb_TIPOSUELDOS.Text = "Seleccione..."

            TipoContrato = New BindingList(Of vTipoContrato)
            TipoContrato.Add(New vTipoContrato("P", "Permanente"))
            TipoContrato.Add(New vTipoContrato("T", "Temporal"))
            TipoContrato.Add(New vTipoContrato("O", "Otro"))
            cmb_TIPOCONTRATO.DataSource = TipoContrato
            cmb_TIPOCONTRATO.DisplayMember = "d_descripcion_TipoContrato"
            cmb_TIPOCONTRATO.ValueMember = "d_id_TipoContrato"
            cmb_TIPOCONTRATO.Text = "Seleccione..."


            Zona = New BindingList(Of vZona)
            Zona.Add(New vZona("A", "A"))
            Zona.Add(New vZona("B", "B"))
            cmb_ZONA.DataSource = Zona
            cmb_ZONA.DisplayMember = "d_descripcion_Zona"
            cmb_ZONA.ValueMember = "d_id_Zona"
            cmb_ZONA.SelectedIndex = 0

            dt = func.mostrar_tabla("tipo_nomina")
            If dt.Rows.Count <> 0 Then
                cmb_TIPONOMINA.DataSource = dt
                cmb_TIPONOMINA.DisplayMember = "descripcion_nomina"
                cmb_TIPONOMINA.ValueMember = "id_nomina"
                cmb_TIPONOMINA.Text = "Seleccione..."
            End If

            dt = func.mostrar_tabla("estados")
            If dt.Rows.Count <> 0 Then
                cmb_ESTADOS.DataSource = dt
                cmb_ESTADOS.DisplayMember = "descripcion_estados"
                cmb_ESTADOS.ValueMember = "id_estados"
                cmb_ESTADOS.Text = "Seleccione..."
            End If

            dt = func.mostrar_tabla("ciudades")
            If dt.Rows.Count <> 0 Then
                cmb_CIUDADES.DataSource = dt
                cmb_CIUDADES.DisplayMember = "descripcion_ciudad"
                cmb_CIUDADES.ValueMember = "id_ciudad"
                cmb_CIUDADES.Text = "Seleccione..."
            End If

            dt = func.mostrar_tabla("colonias")
            If dt.Rows.Count <> 0 Then
                cmb_COLONIAS.DataSource = dt
                cmb_COLONIAS.DisplayMember = "descripcion_colonia"
                cmb_COLONIAS.ValueMember = "id_colonia"
                cmb_COLONIAS.Text = "Seleccione..."
            End If



            dt = func.mostrar_tabla("escolaridad")
            If dt.Rows.Count <> 0 Then
                cmb_ESCOLARIDAD.DataSource = dt
                cmb_ESCOLARIDAD.DisplayMember = "descripcion_escolaridad"
                cmb_ESCOLARIDAD.ValueMember = "id_escolaridad"
                cmb_ESCOLARIDAD.Text = "Seleccione..."
            End If

            AplicaSub = New BindingList(Of vAplicaSub)
            AplicaSub.Add(New vAplicaSub("T", "Si"))
            AplicaSub.Add(New vAplicaSub("F", "No"))
            cmb_APLICA_SUB.DataSource = AplicaSub
            cmb_APLICA_SUB.DisplayMember = "d_descripcion_aplicasub"
            cmb_APLICA_SUB.ValueMember = "d_id_aplicasub"
            cmb_APLICA_SUB.SelectedIndex = 1


            TipoEmpleado = New BindingList(Of vTipoEmpleado)
            TipoEmpleado.Add(New vTipoEmpleado("1", "Nacional"))
            TipoEmpleado.Add(New vTipoEmpleado("2", "Extranjero"))
            cmb_TIPOEMPLEADO.DataSource = TipoEmpleado
            cmb_TIPOEMPLEADO.DisplayMember = "d_descripcion_TipoEmpleado"
            cmb_TIPOEMPLEADO.ValueMember = "d_id_TipoEmpleado"
            cmb_TIPOEMPLEADO.Text = "Seleccione..."



            TipoJornada = New BindingList(Of vTipoJornada)
            TipoJornada.Add(New vTipoJornada("Normal", "Normal"))
            TipoJornada.Add(New vTipoJornada("Reducida", "Reducida"))
            cmb_TIPO_JORNADA.DataSource = TipoJornada
            cmb_TIPO_JORNADA.DisplayMember = "d_descripcion_TipoJornada"
            cmb_TIPO_JORNADA.ValueMember = "d_id_TipoJornada"
            cmb_TIPO_JORNADA.SelectedIndex = 0



            dt = func.mostrar_tabla("bancos")
            If dt.Rows.Count <> 0 Then
                cmb_BANCOS.DataSource = dt
                cmb_BANCOS.DisplayMember = "descripcion_clave"
                cmb_BANCOS.ValueMember = "id_bancos"
                cmb_BANCOS.Text = "Seleccione..."
            End If

           

            TipoRegimen = New BindingList(Of vTipoRegimen)
            TipoRegimen.Add(New vTipoRegimen("1", "Sueldos y Salarios"))
            TipoRegimen.Add(New vTipoRegimen("2", "Jubilados"))
            TipoRegimen.Add(New vTipoRegimen("3", "Pensionados"))
            cmb_TIPO_REGIMEN.DataSource = TipoRegimen
            cmb_TIPO_REGIMEN.DisplayMember = "d_descripcion_TipoRegimen"
            cmb_TIPO_REGIMEN.ValueMember = "d_id_TipoRegimen"
            cmb_TIPO_REGIMEN.SelectedIndex = 0


            CalUtilidades = New BindingList(Of vCalUtilidades)
            CalUtilidades.Add(New vCalUtilidades("T", "Si"))
            CalUtilidades.Add(New vCalUtilidades("F", "No"))
            cmb_CAL_UTILIDADES.DataSource = CalUtilidades
            cmb_CAL_UTILIDADES.DisplayMember = "d_descripcion_CalUtilidades"
            cmb_CAL_UTILIDADES.ValueMember = "d_id_CalUtilidades"
            cmb_CAL_UTILIDADES.SelectedIndex = 0



            ClaseRiesgo = New BindingList(Of vClaseRiesgo)
            ClaseRiesgo.Add(New vClaseRiesgo("1", "1"))
            ClaseRiesgo.Add(New vClaseRiesgo("2", "2"))
            ClaseRiesgo.Add(New vClaseRiesgo("3", "3"))
            ClaseRiesgo.Add(New vClaseRiesgo("4", "4"))
            ClaseRiesgo.Add(New vClaseRiesgo("5", "5"))
            cmb_CLASERIESGO.DataSource = ClaseRiesgo
            cmb_CLASERIESGO.DisplayMember = "d_descripcion_ClaseRiesgo"
            cmb_CLASERIESGO.ValueMember = "d_id_ClaseRiesgo"
            cmb_CLASERIESGO.SelectedIndex = 0


            dt = func.mostrar_tabla("metodos_pagos")
            If dt.Rows.Count <> 0 Then
                cmb_METODOPAGO.DataSource = dt
                cmb_METODOPAGO.DisplayMember = "descripcion_metodo_pago"
                cmb_METODOPAGO.ValueMember = "id_metodospago"
                cmb_METODOPAGO.SelectedIndex = 2
            End If
        Else

            '-------------------SE CARGAN LOS VALORES QUE CONTIENEN LOS REGISTROS EN CASO DE DE REALIZAR UN UPDATE--------
            cmb_STATUS.Enabled = Enabled
            txt_CREDENCIAL.Text = txt_NUMERO.Text

            cmb_STATUS.Enabled = True
            Dim VI As Integer
            Dim VS As String

            VS = cmb_STATUS.Text
            Status = New BindingList(Of vstatus)
            Status.Add(New vstatus("A", "Activo"))
            Status.Add(New vstatus("I", "Inactivo"))
            cmb_STATUS.DataSource = Status
            cmb_STATUS.DisplayMember = "d_descripcion_estado"
            cmb_STATUS.ValueMember = "d_id_estado"
            cmb_STATUS.SelectedValue = VS


            Select Case cmb_EDOCIVL.Text
                Case "S"
                    VI = 0
                Case "C"
                    VI = 1
                Case "D"
                    VI = 2
                Case "V"
                    VI = 3
                Case "U"
                    VI = 4
            End Select

            Edocivil = New BindingList(Of vedocivil)
            Edocivil.Add(New vedocivil("S", "Soltero"))
            Edocivil.Add(New vedocivil("C", "Casado"))
            Edocivil.Add(New vedocivil("D", "Divorciado"))
            Edocivil.Add(New vedocivil("V", "Viudo"))
            Edocivil.Add(New vedocivil("U", "Union Libre"))
            cmb_EDOCIVL.DataSource = Edocivil
            cmb_EDOCIVL.DisplayMember = "d_descripcion_edocivil"
            cmb_EDOCIVL.ValueMember = "d_id_edocivil"
            cmb_EDOCIVL.SelectedIndex = VI
         


            Select Case cmb_SEXO.Text
                Case "F"
                    VI = 0
                Case "M"
                    VI = 1
            End Select
            Sexo = New BindingList(Of vSexo)
            Sexo.Add(New vSexo("F", "Femenino"))
            Sexo.Add(New vSexo("M", "Masculino"))
            cmb_SEXO.DataSource = Sexo
            cmb_SEXO.DisplayMember = "d_descripcion_Sexo"
            cmb_SEXO.ValueMember = "d_id_Sexo"
            cmb_SEXO.SelectedIndex = VI


            VS = cmb_DEPTO.Text
            dt = func.mostrar_tabla("depto")
            If dt.Rows.Count <> 0 Then
                cmb_DEPTO.DataSource = dt
                cmb_DEPTO.DisplayMember = "descripcion_depto"
                cmb_DEPTO.ValueMember = "id_departamento"
                cmb_DEPTO.Text = VS
            End If


            VS = cmb_CCTO.Text
            dt = func.mostrar_tabla("centro_costos")
            If dt.Rows.Count <> 0 Then
                cmb_CCTO.DataSource = dt
                cmb_CCTO.DisplayMember = "descripcion_ccto"
                cmb_CCTO.ValueMember = "id_ccto"
                cmb_CCTO.Text = VS
            End If

            VS = cmb_PUESTO.Text
            dt = func.mostrar_tabla("puesto")
            If dt.Rows.Count <> 0 Then
                cmb_PUESTO.DataSource = dt
                cmb_PUESTO.DisplayMember = "descripcion_puesto"
                cmb_PUESTO.ValueMember = "id_puesto"
                cmb_PUESTO.Text = VS
            End If

            VS = cmb_TURNO.Text
            dt = func.mostrar_tabla("turno")
            If dt.Rows.Count <> 0 Then
                cmb_TURNO.DataSource = dt
                cmb_TURNO.DisplayMember = "descripcion_turno"
                cmb_TURNO.ValueMember = "id_turno"
                cmb_TURNO.Text = VS
            End If


            Motbaja = New BindingList(Of vMotBaja)
            Motbaja.Add(New vMotBaja("0", "N/A"))
            Motbaja.Add(New vMotBaja("1", "Término de contracto"))
            Motbaja.Add(New vMotBaja("2", "Separación Voluntaria"))
            Motbaja.Add(New vMotBaja("3", "Abandono de Empleo"))
            Motbaja.Add(New vMotBaja("4", "Defunción"))
            cmb_MOTBAJA.DataSource = Motbaja
            cmb_MOTBAJA.DisplayMember = "d_descripcion_MotBaja"
            cmb_MOTBAJA.ValueMember = "d_id_MotBaja"


            VS = cmb_LUGARORIGEN.Text
            EntidadFede = New BindingList(Of vEntidadFede)
            EntidadFede.Add(New vEntidadFede("AS", "AGUASCALIENTES", "01"))
            EntidadFede.Add(New vEntidadFede("BC", "BAJA CALIFORNIA", "02"))
            EntidadFede.Add(New vEntidadFede("BS", "BAJA CALIFORNIA SUR", "03"))
            EntidadFede.Add(New vEntidadFede("CC", "CAMPECHE", "04"))
            EntidadFede.Add(New vEntidadFede("CL", "COAHUILA", "05"))
            EntidadFede.Add(New vEntidadFede("CM", "COLIMA", "06"))
            EntidadFede.Add(New vEntidadFede("CS", "CHIAPAS", "07"))
            EntidadFede.Add(New vEntidadFede("CH", "CHIHUAHUA", "08"))
            EntidadFede.Add(New vEntidadFede("DF", "DISTRITO FEDERAL", "09"))
            EntidadFede.Add(New vEntidadFede("DG", "DURANGO", "10"))
            EntidadFede.Add(New vEntidadFede("GT", "GUANAJUATO", "11"))
            EntidadFede.Add(New vEntidadFede("GR", "GUERRERO", "12"))
            EntidadFede.Add(New vEntidadFede("HG", "HIDALGO", "13"))
            EntidadFede.Add(New vEntidadFede("JC", "JALISCO", "14"))
            EntidadFede.Add(New vEntidadFede("MC", "MÉXICO", "15"))
            EntidadFede.Add(New vEntidadFede("MN", "MICHOACÁN", "16"))
            EntidadFede.Add(New vEntidadFede("MS", "MORELOS", "17"))
            EntidadFede.Add(New vEntidadFede("NT", "NAYARIT", "18"))
            EntidadFede.Add(New vEntidadFede("NL", "NUEVO LEÓN", "19"))
            EntidadFede.Add(New vEntidadFede("OC", "OAXACA", "20"))
            EntidadFede.Add(New vEntidadFede("PL", "PUEBLA", "21"))
            EntidadFede.Add(New vEntidadFede("QT", "QUERÉTARO", "22"))
            EntidadFede.Add(New vEntidadFede("QR", "QUINTANA ROO", "23"))
            EntidadFede.Add(New vEntidadFede("SP", "SAN LUIS POTOSI", "24"))
            EntidadFede.Add(New vEntidadFede("SL", "SINALOA", "25"))
            EntidadFede.Add(New vEntidadFede("SR", "SONORA", "26"))
            EntidadFede.Add(New vEntidadFede("TC", "TABASCO", "27"))
            EntidadFede.Add(New vEntidadFede("TS", "TAMAULIPAS", "28"))
            EntidadFede.Add(New vEntidadFede("TL", "TLAXCALA", "29"))
            EntidadFede.Add(New vEntidadFede("VZ", "VERACRUZ", "30"))
            EntidadFede.Add(New vEntidadFede("YN", "YUCÁTAN", "31"))
            EntidadFede.Add(New vEntidadFede("ZS", "ZACATECAS", "32"))
            EntidadFede.Add(New vEntidadFede("NE", "NACIDO EN EL EXTRANJERO", "00"))

            cmb_LUGARORIGEN.DataSource = EntidadFede
            cmb_LUGARORIGEN.DisplayMember = "d_descripcion_EntidadFede"
            cmb_LUGARORIGEN.ValueMember = "d_id_EntidadFede"
            cmb_LUGARORIGEN.SelectedIndex = CInt(VS) - 1

            '----------------USAR COMPONENTE AL EDITAR LOS REGISTROS HISTORICOS DE LOS CANDIDATOS DESCARTADOS--------------
            dt = func.mostrar_tabla("motivo_descarto")
            If dt.Rows.Count <> 0 Then
                cmb_MOTIVO.DataSource = dt
                cmb_MOTIVO.DisplayMember = "descripcion_motivo"
                cmb_MOTIVO.ValueMember = "id_motivo"

            End If

            VI = cmb_TIPOSUELDOS.Text
            TipoSueldo = New BindingList(Of vTipoSueldo)
            TipoSueldo.Add(New vTipoSueldo("1", "Fijo"))
            TipoSueldo.Add(New vTipoSueldo("2", "Variable"))
            TipoSueldo.Add(New vTipoSueldo("3", "Mixto"))
            cmb_TIPOSUELDOS.DataSource = TipoSueldo
            cmb_TIPOSUELDOS.DisplayMember = "d_descripcion_TipoSueldo"
            cmb_TIPOSUELDOS.ValueMember = "d_id_TipoSueldo"
            cmb_TIPOSUELDOS.SelectedIndex = VI - 1


            VS = cmb_TIPOCONTRATO.Text
            TipoContrato = New BindingList(Of vTipoContrato)
            TipoContrato.Add(New vTipoContrato("P", "Permanente"))
            TipoContrato.Add(New vTipoContrato("T", "Temporal"))
            TipoContrato.Add(New vTipoContrato("O", "Otro"))
            cmb_TIPOCONTRATO.DataSource = TipoContrato
            cmb_TIPOCONTRATO.DisplayMember = "d_descripcion_TipoContrato"
            cmb_TIPOCONTRATO.ValueMember = "d_id_TipoContrato"
            cmb_TIPOCONTRATO.SelectedValue = VS

            VS = cmb_ZONA.Text
            Zona = New BindingList(Of vZona)
            Zona.Add(New vZona("A", "A"))
            Zona.Add(New vZona("B", "B"))
            cmb_ZONA.DataSource = Zona
            cmb_ZONA.DisplayMember = "d_descripcion_Zona"
            cmb_ZONA.ValueMember = "d_id_Zona"
            cmb_ZONA.SelectedValue = VS


            VS = cmb_TIPONOMINA.Text
            dt = func.mostrar_tabla("tipo_nomina")
            If dt.Rows.Count <> 0 Then
                cmb_TIPONOMINA.DataSource = dt
                cmb_TIPONOMINA.DisplayMember = "descripcion_nomina"
                cmb_TIPONOMINA.ValueMember = "id_nomina"
                cmb_TIPONOMINA.SelectedValue = VS
            End If


            VS = cmb_ESTADOS.Text
            dt = func.mostrar_tabla("estados")
            If dt.Rows.Count <> 0 Then
                cmb_ESTADOS.DataSource = dt
                cmb_ESTADOS.DisplayMember = "descripcion_estados"
                cmb_ESTADOS.ValueMember = "id_estados"
                cmb_ESTADOS.SelectedValue = VS
            End If

            VS = cmb_CIUDADES.Text
            dt = func.mostrar_tabla("ciudades")
            If dt.Rows.Count <> 0 Then
                cmb_CIUDADES.DataSource = dt
                cmb_CIUDADES.DisplayMember = "descripcion_ciudad"
                cmb_CIUDADES.ValueMember = "id_ciudad"
                cmb_CIUDADES.SelectedValue = VS
            End If

            VS = cmb_COLONIAS.Text
            dt = func.mostrar_tabla("colonias")
            If dt.Rows.Count <> 0 Then
                cmb_COLONIAS.DataSource = dt
                cmb_COLONIAS.DisplayMember = "descripcion_colonia"
                cmb_COLONIAS.ValueMember = "id_colonia"
                cmb_COLONIAS.SelectedValue = VS
            End If


            VS = cmb_ESCOLARIDAD.Text
            dt = func.mostrar_tabla("escolaridad")
            If dt.Rows.Count <> 0 Then
                cmb_ESCOLARIDAD.DataSource = dt
                cmb_ESCOLARIDAD.DisplayMember = "descripcion_escolaridad"
                cmb_ESCOLARIDAD.ValueMember = "id_escolaridad"
                cmb_ESCOLARIDAD.SelectedValue = VS
            End If

            VS = cmb_APLICA_SUB.Text
            AplicaSub = New BindingList(Of vAplicaSub)
            AplicaSub.Add(New vAplicaSub("T", "Si"))
            AplicaSub.Add(New vAplicaSub("F", "No"))
            cmb_APLICA_SUB.DataSource = AplicaSub
            cmb_APLICA_SUB.DisplayMember = "d_descripcion_aplicasub"
            cmb_APLICA_SUB.ValueMember = "d_id_aplicasub"
            cmb_APLICA_SUB.SelectedValue = VS

            VS = cmb_TIPO_JORNADA.Text
            TipoJornada = New BindingList(Of vTipoJornada)
            TipoJornada.Add(New vTipoJornada("Normal", "Normal"))
            TipoJornada.Add(New vTipoJornada("Reducida", "Reducida"))
            cmb_TIPO_JORNADA.DataSource = TipoJornada
            cmb_TIPO_JORNADA.DisplayMember = "d_descripcion_TipoJornada"
            cmb_TIPO_JORNADA.ValueMember = "d_id_TipoJornada"
            cmb_TIPO_JORNADA.SelectedValue = VS

            VS = cmb_TIPO_REGIMEN.Text
            TipoRegimen = New BindingList(Of vTipoRegimen)
            TipoRegimen.Add(New vTipoRegimen("1", "Sueldos y Salarios"))
            TipoRegimen.Add(New vTipoRegimen("2", "Jubilados"))
            TipoRegimen.Add(New vTipoRegimen("3", "Pensionados"))
            cmb_TIPO_REGIMEN.DataSource = TipoRegimen
            cmb_TIPO_REGIMEN.DisplayMember = "d_descripcion_TipoRegimen"
            cmb_TIPO_REGIMEN.ValueMember = "d_id_TipoRegimen"
            cmb_TIPO_REGIMEN.SelectedValue = VS

            VS = cmb_CAL_UTILIDADES.Text
            CalUtilidades = New BindingList(Of vCalUtilidades)
            CalUtilidades.Add(New vCalUtilidades("T", "Si"))
            CalUtilidades.Add(New vCalUtilidades("F", "No"))
            cmb_CAL_UTILIDADES.DataSource = CalUtilidades
            cmb_CAL_UTILIDADES.DisplayMember = "d_descripcion_CalUtilidades"
            cmb_CAL_UTILIDADES.ValueMember = "d_id_CalUtilidades"
            cmb_CAL_UTILIDADES.SelectedValue = VS

            VS = cmb_METODOPAGO.Text
            dt = func.mostrar_tabla("metodos_pagos")
            If dt.Rows.Count <> 0 Then
                cmb_METODOPAGO.DataSource = dt
                cmb_METODOPAGO.DisplayMember = "descripcion_metodo_pago"
                cmb_METODOPAGO.ValueMember = "id_metodospago"
                cmb_METODOPAGO.SelectedValue = VS
            End If




            VS = cmb_TIPOEMPLEADO.Text
            TipoEmpleado = New BindingList(Of vTipoEmpleado)
            TipoEmpleado.Add(New vTipoEmpleado("1", "Nacional"))
            TipoEmpleado.Add(New vTipoEmpleado("2", "Extranjero"))
            cmb_TIPOEMPLEADO.DataSource = TipoEmpleado
            cmb_TIPOEMPLEADO.DisplayMember = "d_descripcion_TipoEmpleado"
            cmb_TIPOEMPLEADO.ValueMember = "d_id_TipoEmpleado"
            cmb_TIPOEMPLEADO.SelectedValue = VS

            VS = cmb_BANCOS.Text
            dt = func.mostrar_tabla("bancos")
            If dt.Rows.Count <> 0 Then
                cmb_BANCOS.DataSource = dt
                cmb_BANCOS.DisplayMember = "descripcion_clave"
                cmb_BANCOS.ValueMember = "id_bancos"
                cmb_BANCOS.SelectedValue = VS
            End If


            VS = cmb_CLASERIESGO.Text
            ClaseRiesgo = New BindingList(Of vClaseRiesgo)
            ClaseRiesgo.Add(New vClaseRiesgo("1", "1"))
            ClaseRiesgo.Add(New vClaseRiesgo("2", "2"))
            ClaseRiesgo.Add(New vClaseRiesgo("3", "3"))
            ClaseRiesgo.Add(New vClaseRiesgo("4", "4"))
            ClaseRiesgo.Add(New vClaseRiesgo("5", "5"))
            cmb_CLASERIESGO.DataSource = ClaseRiesgo
            cmb_CLASERIESGO.DisplayMember = "d_descripcion_ClaseRiesgo"
            cmb_CLASERIESGO.ValueMember = "d_id_ClaseRiesgo"
            cmb_CLASERIESGO.SelectedValue = VS


          


        End If


    End Sub

    Private Sub txt_NUMERO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_NUMERO.KeyPress
        func.validar_Num(txt_NUMERO, e)
    End Sub
    Private Sub txt_NUMERO_Leave(sender As Object, e As EventArgs) Handles txt_NUMERO.Leave

        txt_CREDENCIAL.Text = txt_NUMERO.Text
    End Sub

    Private Sub txt_NOMBRE_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_NOMBRE.KeyPress
        func.validar_letras(txt_NOMBRE, e)
    End Sub


    Private Sub txt_APELLIDO1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_APELLIDO1.KeyPress
        func.validar_letras(txt_APELLIDO1, e)
    End Sub

    Private Sub txt_APELLIDO2_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_APELLIDO2.KeyPress
        func.validar_letras(txt_APELLIDO2, e)
    End Sub

    Private Sub txt_NACIONAL_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_NACIONAL.KeyPress
        func.validar_letras(txt_NACIONAL, e)
    End Sub

    Private Sub txt_SUELDO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_SUELDO.KeyPress
        func.validar_NumConFrac(txt_SUELDO, e)
    End Sub

    Private Sub txt_RFC_Leave(sender As Object, e As EventArgs) Handles txt_RFC.Leave
        'validar RFC
        If txt_RFC.Text <> String.Empty Then
            If Regex.IsMatch(txt_RFC.Text.Trim, "^([A-Z\s]{4})\d{6}([A-Z\w]{3})$") = False Then
                MessageBox.Show("El campo RFC no es válido. El formato correcto es: LLLL######LL ó LLLL######LLL. L = Letra, # = Número." & vbCrLf & "Por favor ingrese un formato valido", _
                            "Formato de RCF incorrecto", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
                txt_RFC.Select()
                txt_RFC.Text = ""
            End If
        End If
        txt_RFC.CharacterCasing = CharacterCasing.Upper


    End Sub

    Private Sub txt_CURP_Leave(sender As Object, e As EventArgs)
        'VALIDAR CURP

    End Sub


    Private Sub btn_cancelar_Click_1(sender As Object, e As EventArgs) Handles btn_cancelar.Click
        Me.Close()
    End Sub

    Private Sub cmb_DEPTO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_DEPTO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_CCTO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_CCTO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_TURNO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_TURNO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_PUESTO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_PUESTO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_MOTIVO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_MOTIVO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_STATUS_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_STATUS.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_EDOCIVL_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_EDOCIVL.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_SEXO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_SEXO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_TIPOCONTRATO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_TIPOCONTRATO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_ZONA_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_ZONA.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_TIPOSUELDOS_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_TIPOSUELDOS.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_ESTADOS_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_ESTADOS.KeyPress
        e.Handled = True
    End Sub
    Private Sub cmb_CIUDADES_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_CIUDADES.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_COLONIAS_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_COLONIAS.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_ESCOLARIDAD_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_ESCOLARIDAD.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_APLICA_SUB_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_APLICA_SUB.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_TIPOEMPLEADO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_TIPOEMPLEADO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_TIPO_JORNADA_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_TIPO_JORNADA.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_BANCOS_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_BANCOS.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_TIPO_REGIMEN_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_TIPO_REGIMEN.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_CAL_UTILIDADES_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_CAL_UTILIDADES.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_CLASERIESGO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_CLASERIESGO.KeyPress
        e.Handled = True
    End Sub

    Private Sub cmb_METODOPAGO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_METODOPAGO.KeyPress
        e.Handled = True
    End Sub
    Private Sub cmb_LUGARORIGEN_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_LUGARORIGEN.KeyPress
        e.Handled = True
    End Sub
    Private Sub cmb_TIPONOMINA_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cmb_TIPONOMINA.KeyPress
        e.Handled = True
    End Sub

    Private Sub btn_insertar_Click(sender As Object, e As EventArgs) Handles btn_insertar.Click
        
        insertar_update()

    End Sub
    Public Sub insertar_update()
        If ValidarCampos() = True Then
            Try
                Dim dts As New vCandidatos
                dts.d_numero = txt_NUMERO.Text
                dts.d_credencial = txt_CREDENCIAL.Text
                dts.d_nombre = txt_NOMBRE.Text
                dts.d_apellido1 = txt_APELLIDO1.Text
                dts.d_apellido2 = txt_APELLIDO2.Text
                dts.d_estado = cmb_STATUS.SelectedValue.ToString
                dts.d_edocivil = cmb_EDOCIVL.SelectedValue.ToString
                dts.d_sexo = cmb_SEXO.SelectedValue.ToString 'Selecciona la Clave
                dts.d_tiponom = cmb_TIPONOMINA.SelectedValue.ToString
                dts.d_turno = cmb_TURNO.SelectedValue.ToString
                dts.d_ccto = cmb_CCTO.SelectedValue.ToString
                dts.d_depto = cmb_DEPTO.SelectedValue.ToString
                dts.d_puesto = cmb_PUESTO.SelectedValue.ToString
                dts.d_codigopago = "01"
                dts.d_codahorro = "01"
                dts.d_politica = "01"
                dts.d_rfc = txt_RFC.Text.ToString
                dts.d_imss = mtb_IMSS.Text.ToString
                dts.d_curp = mtb_CURP.Text.ToString

                Dim tipodate1 As Date = dtp_FECHANAC.Value.Date.ToString("yyyy/MM/dd")
                dts.d_fechanac = tipodate1 'FECHA


                dts.d_lugarorig = cmb_LUGARORIGEN.Text.ToString
                dts.d_entidad = cmb_LUGARORIGEN.SelectedIndex + 1
                dts.d_nacional = txt_NACIONAL.Text
                dts.d_hijos = cmb_HIJOS.Text

                Dim tipodate2 As Date = dtp_FECHAALTA.Value.Date.ToString("yyyy/MM/dd")
                dts.d_fechaalta = tipodate2 'FECHA

                'Dim tipodate3 As Date
                'Date.TryParseExact(txt_FECHABAJA.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture, _
                '          DateTimeStyles.None, tipodate3)
                dts.d_fechabaja = "00/00/0000" 'FECHA

                'Dim tipodate4 As Date
                'Date.TryParseExact(txt_REINGRESO.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture, _
                '          DateTimeStyles.None, tipodate4)
                dts.d_reingreso = "00/00/0000" 'FECHA

                'Dim tipodate5 As Date
                'Date.TryParseExact(txt_BAJAIMSS.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture, _
                '          DateTimeStyles.None, tipodate5)
                dts.d_bajaimss = "00/00/0000" 'FECHA


                dts.d_motbaja = cmb_MOTBAJA.SelectedValue.ToString
                dts.d_sueldo = CDbl(Val(txt_SUELDO.Text))
                dts.d_sueldoimss = CDbl(Val(txt_SUELDOIMSS.Text))
                dts.d_sueldoinfo = CDbl(Val(txt_SUELDOINFO.Text))

                Dim tipodate6 As Date = dtp_INICIASUEL.Value.Date.ToString("yyyy/MM/dd")
                dts.d_iniciasuel = tipodate6 'FECHA

                dts.d_sdi_var = CDbl(Val(txt_SDI_VAR.Text))
                dts.d_motivo = "1"
                dts.d_tipo_suel = cmb_TIPOSUELDOS.SelectedValue.ToString
                dts.d_tipocontra = cmb_TIPOCONTRATO.SelectedValue.ToString

                Dim tipodate7 As Date = dtp_FECHAINICIOCONTRACTO.Value.Date.ToString("yyyy/MM/dd")
                dts.d_iniciacon = tipodate7 'FECHA

                'Dim tipodate8 As Date
                'Date.TryParseExact(txt_FECHA_TERMINOC.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture, _
                '          DateTimeStyles.None, tipodate8)
                dts.d_finalcon = "00/00/0000" 'FECHA

                dts.d_zona = cmb_ZONA.SelectedValue.ToString
                dts.d_estadodir = cmb_ESTADOS.SelectedValue.ToString
                dts.d_ciudad = cmb_CIUDADES.SelectedValue.ToString
                dts.d_colonia = cmb_COLONIAS.SelectedValue.ToString
                dts.d_direccion = txt_DIRECCION.Text
                dts.d_telefono = mtb_TELEFONO.Text
                dts.d_codpostal = mtb_CODIGOPOSTAL.Text
                dts.d_escolarid = cmb_ESCOLARIDAD.SelectedValue.ToString
                dts.d_carrera = txt_CARRERATERMINADA.Text
                dts.d_aplica_sub = cmb_APLICA_SUB.SelectedValue.ToString
                dts.d_tipo_empl = cmb_TIPOEMPLEADO.SelectedValue.ToString
                dts.d_tjornada = cmb_TIPO_JORNADA.SelectedValue.ToString
                dts.d_clavebanco = cmb_BANCOS.SelectedValue.ToString
                dts.d_tregimen = cmb_TIPO_REGIMEN.SelectedValue.ToString
                dts.d_regpatron = txt_REGISTROPATRONAL.Text
                dts.d_utilidades = cmb_CAL_UTILIDADES.SelectedValue.ToString
                dts.d_claseries = cmb_CLASERIESGO.SelectedValue.ToString
                dts.d_metodop = cmb_METODOPAGO.SelectedValue.ToString

                dts.d_status_exportacion = 0
                dts.d_userlastupdate = frmlogin.txtlogin.Text


                'dts.d_motivo_rechazo = DBNull.Value
                'dts.d_otro_motivo_rechazo = txt_OTROMOTIVO.Text

                If btn_insertar.Visible = True Then
                    '--------------------------PROCEDIMIENTO PARA INSERTAR REGISTROS-----------------------------
                    If func.insertar(dts) Then
                        MessageBox.Show("¡Registros guardados exitosamente!", _
                                    "Mensaje", _
                                    MessageBoxButtons.OK, _
                                    MessageBoxIcon.Exclamation)

                        'funcion para reiniciar el formulario
                        Me.Close()

                        Dim vfrmcandidatos As frmcandidatos = frmcandidatos.getinstancia()
                        vfrmcandidatos.maxRec = vfrmcandidatos.maxRec + 1
                        vfrmcandidatos.FillGrid()

                    Else
                        MessageBox.Show("¡Error al intentar Guardar el registro!", _
                                   "Mensaje", _
                                   MessageBoxButtons.OK, _
                                   MessageBoxIcon.Error)
                        'funcion para reiniciar el formulario
                        'Me.Close()
                    End If

                Else
                    '------------------------------------PROCEDIMIENTO PARA ACTUALIZAR REGISTROS----------------------
                    If func.editar(dts) Then
                        MessageBox.Show("¡Los Registros se actualizarón exitosamente!", _
                                    "Mensaje", _
                                    MessageBoxButtons.OK, _
                                    MessageBoxIcon.Exclamation)

                        'funcion para reiniciar el formulario
                        Me.Close()

                        Dim vfrmcandidatos As frmcandidatos = frmcandidatos.getinstancia()
                        vfrmcandidatos.FillGrid()

                    Else
                        MessageBox.Show("¡Error al intentar actualizar los registros!", _
                                   "Mensaje", _
                                   MessageBoxButtons.OK, _
                                   MessageBoxIcon.Error)
                        'funcion para reiniciar el formulario
                        'Me.Close()
                    End If

                End If


            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If

    End Sub

    Private Sub cmb_MOTIVO_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmb_MOTIVO.SelectedIndexChanged
        If cmb_MOTIVO.Text = "Otro" Then
            txt_OTROMOTIVO.Enabled = True
        End If
    End Sub

    Private Sub txt_SUELDOIMSS_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_SUELDOIMSS.KeyPress
        func.validar_NumConFrac(txt_SUELDOIMSS, e)
    End Sub

    Private Sub txt_SUELDOINFO_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_SUELDOINFO.KeyPress
        func.validar_NumConFrac(txt_SUELDOINFO, e)
    End Sub

    Private Sub txt_SDI_VAR_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_SDI_VAR.KeyPress
        func.validar_NumConFrac(txt_SDI_VAR, e)
    End Sub

    Private Sub txt_CARRERATERMINADA_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txt_CARRERATERMINADA.KeyPress
        func.validar_letras(txt_CARRERATERMINADA, e)
    End Sub
    Private Sub cmb_TIPONOMINA_Leave(sender As Object, e As EventArgs) Handles cmb_TIPONOMINA.Leave
        tc_candidato.SelectedIndex = 2
    End Sub

    Private Sub mtb_CODIGOPOSTAL_Leave(sender As Object, e As EventArgs) Handles mtb_CODIGOPOSTAL.Leave
        tc_candidato.SelectedIndex = 3
    End Sub

    Private Sub btn_cancelar_Leave(sender As Object, e As EventArgs) Handles btn_cancelar.Leave
        tc_candidato.SelectedIndex = 0
    End Sub
    Public Function ValidarCampos() As Boolean

        If txt_NUMERO.Text = "" Then
            MessageBox.Show("El campo -NO. EMPLEADO- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            txt_NUMERO.Select()
            Return False
            Exit Function
        End If

        If cmb_EDOCIVL.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -ESTADO CIVL- " & vbCrLf & "Por favor seleccione un dato de la lista", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_EDOCIVL.Select()
            Return False
            Exit Function
        End If

        If cmb_SEXO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -SEXO- " & vbCrLf & "Por favor seleccione un dato de la lista", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_SEXO.Select()
            Return False
            Exit Function
        End If


        If txt_NOMBRE.Text = "" Then
            MessageBox.Show("El campo -NOMBRE- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            txt_NOMBRE.Select()
            Return False
            Exit Function
        End If

        If txt_APELLIDO1.Text = "" Then
            MessageBox.Show("El campo -APELLIDO PATERNO- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            txt_APELLIDO1.Select()
            Return False
            Exit Function
        End If

        If txt_APELLIDO2.Text = "" Then
            MessageBox.Show("El campo -APELLIDO MATERNO- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            txt_APELLIDO2.Select()
            Return False
            Exit Function
        End If

        If cmb_DEPTO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -DEPARTAMENTO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_DEPTO.Select()
            Return False
            Exit Function
        End If

        If cmb_CCTO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -CENTRO DE COSTOS- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_CCTO.Select()
            Return False
            Exit Function
        End If


        If cmb_PUESTO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -PUESTO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_PUESTO.Select()
            Return False
            Exit Function
        End If


        If cmb_TURNO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -TURNO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_TURNO.Select()
            Return False
            Exit Function
        End If

       

        If cmb_LUGARORIGEN.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -LUGAR DE ORIGEN- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_LUGARORIGEN.Select()
            Return False
            Exit Function
        End If

        If txt_NACIONAL.Text = "" Then
            MessageBox.Show("El campo -NACIONALIDAD- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_NACIONAL.Select()
            Return False
            Exit Function
        End If

        If txt_RFC.Text = "" Then
            MessageBox.Show("El campo -RFC- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_RFC.Select()
            Return False
            Exit Function
        End If


        If mtb_IMSS.Text = "" Then
            MessageBox.Show("El campo -IMSS- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            mtb_IMSS.Select()
            Return False
            Exit Function
        End If

        If mtb_CURP.Text = "" Then
            MessageBox.Show("El campo -CURP- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            mtb_CURP.Select()
            Return False
            Exit Function
        End If

        If txt_SUELDO.Text = "" Then
            MessageBox.Show("El campo -SUELDO BASE DIARIO- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_SUELDO.Select()
            Return False
            Exit Function
        End If

        If txt_SUELDOIMSS.Text = "" Then
            MessageBox.Show("El campo -SUELDO DIARIO INTEGRADO IMSS- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_SUELDOIMSS.Select()
            Return False
            Exit Function
        End If

        If txt_SUELDOINFO.Text = "" Then
            MessageBox.Show("El campo -SUELDO DIARIO INTEGRADO INFO- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_SUELDOINFO.Select()
            Return False
            Exit Function
        End If

        If txt_SDI_VAR.Text = "" Then
            MessageBox.Show("El campo -VARIABLE BIMESTRAL SDI- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_SDI_VAR.Select()
            Return False
            Exit Function
        End If

        If cmb_TIPOSUELDOS.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -TIPO DE SUELDO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_TIPOSUELDOS.Select()
            Return False
            Exit Function
        End If
        
        If cmb_TIPOCONTRATO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -TIPO DE CONTRATO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_TIPOCONTRATO.Select()
            Return False
            Exit Function
        End If

        If cmb_ZONA.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -ZONA DE SALARIO MINIMO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_ZONA.Select()
            Return False
            Exit Function
        End If

        If cmb_TIPONOMINA.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -TIPO DE NOMINA- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_TIPONOMINA.Select()
            Return False
            Exit Function
        End If


        If cmb_ESTADOS.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -ESTADO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_ESTADOS.Select()
            Return False
            Exit Function
        End If

        If cmb_CIUDADES.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -CIUDAD- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_CIUDADES.Select()
            Return False
            Exit Function
        End If

        If cmb_COLONIAS.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -COLONIA- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_COLONIAS.Select()
            Return False
            Exit Function
        End If

        If txt_DIRECCION.Text = "" Then
            MessageBox.Show("El campo -DIRECCIÓN- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_DIRECCION.Select()
            Return False
            Exit Function
        End If

        If mtb_TELEFONO.Text = "" Then
            MessageBox.Show("El campo -TELÉFONO- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            mtb_TELEFONO.Select()
            Return False
            Exit Function
        End If

        If mtb_CODIGOPOSTAL.Text = "" Then
            MessageBox.Show("El campo -CÓDIGO POSTAL- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            mtb_CODIGOPOSTAL.Select()
            Return False
            Exit Function
        End If

        If cmb_ESCOLARIDAD.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -ESCOLARIDAD- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_ESCOLARIDAD.Select()
            Return False
            Exit Function
        End If


        If txt_CARRERATERMINADA.Text = "" Then
            MessageBox.Show("El campo -CARRERA TERMINADA- se encuentra vacio." & vbCrLf & "Por favor ingrese un dato valido", _
                             "Campo vacio", _
                             MessageBoxButtons.OK, _
                             MessageBoxIcon.Exclamation)
            txt_CARRERATERMINADA.Select()
            Return False
            Exit Function
        End If


        If cmb_APLICA_SUB.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -APLICA SUBSIDIO AL EMPLEADO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_APLICA_SUB.Select()
            Return False
            Exit Function
        End If

        If cmb_TIPO_JORNADA.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -TIPO DE JORNADA- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_TIPO_JORNADA.Select()
            Return False
            Exit Function
        End If

        If cmb_TIPO_REGIMEN.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -TIPO DE REGIMEN- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_TIPO_REGIMEN.Select()
            Return False
            Exit Function
        End If


        If cmb_CAL_UTILIDADES.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -CALCULO DE UTILIDADES- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_CAL_UTILIDADES.Select()
            Return False
            Exit Function
        End If

        If cmb_METODOPAGO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -METODO DE PAGO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_METODOPAGO.Select()
            Return False
            Exit Function
        End If

        If cmb_TIPOEMPLEADO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -TIPO DE EMPLEADO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_TIPOEMPLEADO.Select()
            Return False
            Exit Function
        End If

        If cmb_BANCOS.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -CLAVE DE BANCO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_BANCOS.Select()
            Return False
            Exit Function
        End If

        If cmb_CLASERIESGO.Text = "Seleccione..." Then
            MessageBox.Show("No ha hecho una seleccion en el campo -CLAVE DE RIESGO- " & vbCrLf & "Por favor seleccione un dato valido", _
                            "Campo vacio", _
                            MessageBoxButtons.OK, _
                            MessageBoxIcon.Exclamation)
            cmb_CLASERIESGO.Select()
            Return False
            Exit Function
        End If





        Return True
    End Function

    Private Sub mtb_CURP_Leave(sender As Object, e As EventArgs) Handles mtb_CURP.Leave
        If btn_insertar.Enabled = True Then
            tc_candidato.SelectedIndex = 1

        Else
            cmb_MOTIVO.Select()
        End If
    End Sub

    Private Sub btn_editar_Click(sender As Object, e As EventArgs) Handles btn_editar.Click

        insertar_update()
    End Sub
End Class