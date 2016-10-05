Imports System.Data.SqlClient
Imports Excel = Microsoft.Office.Interop.Excel
Imports System.IO

Public Class fCandidatos
    Inherits conexion
    Dim cmd As New SqlCommand

    Public Function mostrar_candidatos_noimportados() As DataTable
        Try
            conectado()
            cmd = New SqlCommand("mostrar_empleados")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            If cmd.ExecuteNonQuery Then
                Dim dt As New DataTable
                Dim da As New SqlDataAdapter(cmd)
                da.Fill(dt)
                Return dt
            Else
                Return Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return Nothing
        Finally
            desconectado()
        End Try
    End Function
    Public Function mostrar_candidatos_aceptados() As DataTable
        Try
            conectado()
            cmd = New SqlCommand("mostrar_empleados_aceptados")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            If cmd.ExecuteNonQuery Then
                Dim dt As New DataTable
                Dim da As New SqlDataAdapter(cmd)
                da.Fill(dt)
                Return dt
            Else
                Return Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return Nothing
        Finally
            desconectado()
        End Try
    End Function
    Public Function mostrar_candidatos_rechazados() As DataTable
        Try
            conectado()
            cmd = New SqlCommand("mostrar_empleados_rechazados")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            If cmd.ExecuteNonQuery Then
                Dim dt As New DataTable
                Dim da As New SqlDataAdapter(cmd)
                da.Fill(dt)
                Return dt
            Else
                Return Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return Nothing
        Finally
            desconectado()
        End Try
    End Function
    Public Function mostrar_candidatos_rechazados_ex() As DataTable
        Try
            conectado()
            cmd = New SqlCommand("mostrar_empleados_rechazados_ex")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            If cmd.ExecuteNonQuery Then
                Dim dt As New DataTable
                Dim da As New SqlDataAdapter(cmd)
                da.Fill(dt)
                Return dt
            Else
                Return Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return Nothing
        Finally
            desconectado()
        End Try
    End Function
    Public Function mostrar_candidatos_exportados(ByVal dts As vCandidatos) As DataTable
        Try
            conectado()
            cmd = New SqlCommand("mostrar_empleados_exp")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn

            cmd.Parameters.AddWithValue("@fecha1", dts.d_fechaalta)
            cmd.Parameters.AddWithValue("@fecha2", dts.d_iniciasuel)

            If cmd.ExecuteNonQuery Then
                Dim dt As New DataTable
                Dim da As New SqlDataAdapter(cmd)
                da.Fill(dt)
                Return dt
            Else
                Return Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return Nothing
        Finally
            desconectado()
        End Try
    End Function
    Public Function mostrar_tabla(ByVal tabla As String) As DataTable
        Try
            conectado()
            Select Case tabla
                Case "depto"
                    cmd = New SqlCommand("SELECT dbo.DEPARTAMENTOS.id_departamento, dbo.DEPARTAMENTOS.descripcion_depto FROM dbo.DEPARTAMENTOS ORDER BY dbo.DEPARTAMENTOS.id_departamento ASC")
                Case "centro_costos"
                    cmd = New SqlCommand("SELECT dbo.CENTROCOSTOS.id_ccto, dbo.CENTROCOSTOS.descripcion_ccto FROM dbo.CENTROCOSTOS ORDER BY dbo.CENTROCOSTOS.id_ccto ASC")
                Case "turno"
                    cmd = New SqlCommand("SELECT dbo.TURNOS.id_turno, dbo.TURNOS.descripcion_turno FROM dbo.TURNOS ORDER BY dbo.TURNOS.id_turno ASC")
                Case "puesto"
                    cmd = New SqlCommand("SELECT dbo.PUESTOS.id_puesto, dbo.PUESTOS.descripcion_puesto  FROM dbo.PUESTOS ORDER BY dbo.PUESTOS.id_puesto ASC")
                Case "motivo_descarto"
                    cmd = New SqlCommand("SELECT dbo.MOTIVODESCARTO.id_motivo, dbo.MOTIVODESCARTO.descripcion_motivo FROM dbo.MOTIVODESCARTO ORDER BY dbo.MOTIVODESCARTO.id_motivo ASC")
                Case "tipo_nomina"
                    cmd = New SqlCommand("SELECT dbo.NOMINAS.id_nomina, dbo.NOMINAS.descripcion_nomina FROM dbo.NOMINAS ORDER BY dbo.NOMINAS.id_nomina ASC")
                Case "estados"
                    cmd = New SqlCommand("SELECT dbo.ESTADOS.id_estados, dbo.ESTADOS.descripcion_estados FROM dbo.ESTADOS ORDER BY dbo.ESTADOS.id_estados ASC")
                Case "ciudades"
                    cmd = New SqlCommand("SELECT  dbo.CIUDADES.id_ciudad, dbo.CIUDADES.descripcion_ciudad FROM dbo.CIUDADES ORDER BY dbo.CIUDADES.id_ciudad ASC")
                Case "colonias"
                    cmd = New SqlCommand("SELECT  dbo.COLONIAS.id_colonia, dbo.COLONIAS.descripcion_colonia FROM dbo.COLONIAS ORDER BY dbo.COLONIAS.id_colonia ASC")
                Case "bancos"
                    cmd = New SqlCommand("SELECT dbo.BANCOS.id_bancos, dbo.BANCOS.descripcion_clave FROM dbo.BANCOS ORDER BY dbo.BANCOS.id_bancos ASC")
                Case "metodos_pagos"
                    cmd = New SqlCommand("SELECT dbo.METODOSPAGOS.id_metodospago, dbo.METODOSPAGOS.descripcion_metodo_pago FROM dbo.METODOSPAGOS ORDER BY dbo.METODOSPAGOS.id_metodospago ASC")
                Case "recomendar_num"
                    cmd = New SqlCommand("SELECT max(numero)+1 from EMPLEADOS")
                Case "escolaridad"
                    cmd = New SqlCommand("SELECT  dbo.ESCOLARIDAD.id_escolaridad,  dbo.ESCOLARIDAD.descripcion_escolaridad FROM dbo.ESCOLARIDAD ORDER BY dbo.ESCOLARIDAD.id_escolaridad ASC")
            End Select

            cmd.Connection = cnn
            If cmd.ExecuteNonQuery Then
                Dim dt As New DataTable
                Dim da As New SqlDataAdapter(cmd)
                da.Fill(dt)
                Return dt
            Else
                Return Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return Nothing
        Finally
            desconectado()
        End Try
    End Function

    Public Function insertar(ByVal dts As vCandidatos) As Boolean
        Try
            conectado()
            cmd = New SqlCommand("insertar_empleados")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn

            cmd.Parameters.AddWithValue("@numero", dts.d_numero)
            cmd.Parameters.AddWithValue("@credencial", dts.d_credencial)
            cmd.Parameters.AddWithValue("@nombre", dts.d_nombre)
            cmd.Parameters.AddWithValue("@apellido1", dts.d_apellido1)
            cmd.Parameters.AddWithValue("@apellido2", dts.d_apellido2)
            cmd.Parameters.AddWithValue("@estado", dts.d_estado)
            cmd.Parameters.AddWithValue("@edocivil", dts.d_edocivil)
            cmd.Parameters.AddWithValue("@sexo", dts.d_sexo)
            cmd.Parameters.AddWithValue("@tiponom", dts.d_tiponom)
            cmd.Parameters.AddWithValue("@turno", dts.d_turno)
            cmd.Parameters.AddWithValue("@ccto", dts.d_ccto)
            cmd.Parameters.AddWithValue("@depto", dts.d_depto)
            cmd.Parameters.AddWithValue("@puesto", dts.d_puesto)
            cmd.Parameters.AddWithValue("@codigopago", dts.d_codigopago)
            cmd.Parameters.AddWithValue("@codahorro", dts.d_codahorro)
            cmd.Parameters.AddWithValue("@politica", dts.d_politica)
            cmd.Parameters.AddWithValue("@rfc", dts.d_rfc)
            cmd.Parameters.AddWithValue("@imss", dts.d_imss)
            cmd.Parameters.AddWithValue("@curp", dts.d_curp)
            cmd.Parameters.AddWithValue("@fechanac", dts.d_fechanac)
            cmd.Parameters.AddWithValue("@lugarorig", dts.d_lugarorig)
            cmd.Parameters.AddWithValue("@entidad", dts.d_entidad)
            cmd.Parameters.AddWithValue("@nacional", dts.d_nacional)
            cmd.Parameters.AddWithValue("@hijos", dts.d_hijos)
            cmd.Parameters.AddWithValue("@fechaalta", dts.d_fechaalta)
            cmd.Parameters.AddWithValue("@fechabaja", dts.d_fechabaja)
            cmd.Parameters.AddWithValue("@reingreso", dts.d_reingreso)
            cmd.Parameters.AddWithValue("@bajaimss", dts.d_bajaimss)
            cmd.Parameters.AddWithValue("@motbaja", dts.d_motbaja)
            cmd.Parameters.AddWithValue("@sueldo", dts.d_sueldo)
            cmd.Parameters.AddWithValue("@sueldoimss", dts.d_sueldoimss)
            cmd.Parameters.AddWithValue("@sueldoinfo", dts.d_sueldoinfo)
            cmd.Parameters.AddWithValue("@iniciasuel", dts.d_iniciasuel)
            cmd.Parameters.AddWithValue("@sdi_var", dts.d_sdi_var)
            cmd.Parameters.AddWithValue("@motivo", dts.d_motivo)
            cmd.Parameters.AddWithValue("@tipo_suel", dts.d_tipo_suel)
            cmd.Parameters.AddWithValue("@tipocontra", dts.d_tipocontra)
            cmd.Parameters.AddWithValue("@iniciacon", dts.d_iniciacon)
            cmd.Parameters.AddWithValue("@finalcon", dts.d_finalcon)
            cmd.Parameters.AddWithValue("@zona", dts.d_zona)
            cmd.Parameters.AddWithValue("@estadodir", dts.d_estadodir)
            cmd.Parameters.AddWithValue("@ciudad", dts.d_ciudad)
            cmd.Parameters.AddWithValue("@colonia", dts.d_colonia)
            cmd.Parameters.AddWithValue("@direccion", dts.d_direccion)
            cmd.Parameters.AddWithValue("@telefono", dts.d_telefono)
            cmd.Parameters.AddWithValue("@codpostal", dts.d_codpostal)
            cmd.Parameters.AddWithValue("@escolarid", dts.d_escolarid)
            cmd.Parameters.AddWithValue("@carrera", dts.d_carrera)
            cmd.Parameters.AddWithValue("@aplica_sub", dts.d_aplica_sub)
            cmd.Parameters.AddWithValue("@tipo_empl", dts.d_tipo_empl)
            cmd.Parameters.AddWithValue("@tjornada", dts.d_tjornada)
            cmd.Parameters.AddWithValue("@clavebanco", dts.d_clavebanco)
            cmd.Parameters.AddWithValue("@tregimen", dts.d_tregimen)
            cmd.Parameters.AddWithValue("@regpatron", dts.d_regpatron)
            cmd.Parameters.AddWithValue("@utilidades", dts.d_utilidades)
            cmd.Parameters.AddWithValue("@claseries", dts.d_claseries)
            cmd.Parameters.AddWithValue("@metodop", dts.d_metodop)
            'cmd.Parameters.AddWithValue("@status_exportacion", dts.d_status_exportacion)
            ' cmd.Parameters.AddWithValue("@fecha_exportacion", dts.d_fecha_exportacion)
            cmd.Parameters.AddWithValue("@user_lastupdate", dts.d_userlastupdate)
            'cmd.Parameters.AddWithValue("@motivo_rechazo", dts.d_motivo_rechazo)

            If cmd.ExecuteNonQuery Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            desconectado()
        End Try
    End Function
    Public Function insertar_motivo_rechazo(ByVal dts As vMotivoDescarto) As Boolean
        Try
            conectado()
            cmd = New SqlCommand("insertar_motivorechazo")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn

            cmd.Parameters.AddWithValue("@descripcion_motivo", dts.d_descripcion_MotivoDescarto)

            If cmd.ExecuteNonQuery Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            desconectado()
        End Try
    End Function
    Public Function buscar(ByVal texto As String) As DataTable
        Try
            conectado()
            cmd = New SqlCommand("buscar_empleados")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            cmd.Parameters.AddWithValue("@numero", texto)
            If cmd.ExecuteNonQuery Then
                Dim dt As New DataTable
                Dim da As New SqlDataAdapter(cmd)
                da.Fill(dt)
                Return dt
            Else
                Return Nothing
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return Nothing
        Finally
            desconectado()
        End Try
    End Function
    Public Function editar(ByVal dts As vCandidatos) As Boolean
        Try
            conectado()
            cmd = New SqlCommand("editar_empleados")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn

            cmd.Parameters.AddWithValue("@numero", dts.d_numero)
            cmd.Parameters.AddWithValue("@credencial", dts.d_credencial)
            cmd.Parameters.AddWithValue("@nombre", dts.d_nombre)
            cmd.Parameters.AddWithValue("@apellido1", dts.d_apellido1)
            cmd.Parameters.AddWithValue("@apellido2", dts.d_apellido2)
            cmd.Parameters.AddWithValue("@estado", dts.d_estado)
            cmd.Parameters.AddWithValue("@edocivil", dts.d_edocivil)
            cmd.Parameters.AddWithValue("@sexo", dts.d_sexo)
            cmd.Parameters.AddWithValue("@tiponom", dts.d_tiponom)
            cmd.Parameters.AddWithValue("@turno", dts.d_turno)
            cmd.Parameters.AddWithValue("@ccto", dts.d_ccto)
            cmd.Parameters.AddWithValue("@depto", dts.d_depto)
            cmd.Parameters.AddWithValue("@puesto", dts.d_puesto)
            cmd.Parameters.AddWithValue("@codigopago", dts.d_codigopago)
            cmd.Parameters.AddWithValue("@codahorro", dts.d_codahorro)
            cmd.Parameters.AddWithValue("@politica", dts.d_politica)
            cmd.Parameters.AddWithValue("@rfc", dts.d_rfc)
            cmd.Parameters.AddWithValue("@imss", dts.d_imss)
            cmd.Parameters.AddWithValue("@curp", dts.d_curp)
            cmd.Parameters.AddWithValue("@fechanac", dts.d_fechanac)
            cmd.Parameters.AddWithValue("@lugarorig", dts.d_lugarorig)
            cmd.Parameters.AddWithValue("@entidad", dts.d_entidad)
            cmd.Parameters.AddWithValue("@nacional", dts.d_nacional)
            cmd.Parameters.AddWithValue("@hijos", dts.d_hijos)
            cmd.Parameters.AddWithValue("@fechaalta", dts.d_fechaalta)
            cmd.Parameters.AddWithValue("@fechabaja", dts.d_fechabaja)
            cmd.Parameters.AddWithValue("@reingreso", dts.d_reingreso)
            cmd.Parameters.AddWithValue("@bajaimss", dts.d_bajaimss)
            cmd.Parameters.AddWithValue("@motbaja", dts.d_motbaja)
            cmd.Parameters.AddWithValue("@sueldo", dts.d_sueldo)
            cmd.Parameters.AddWithValue("@sueldoimss", dts.d_sueldoimss)
            cmd.Parameters.AddWithValue("@sueldoinfo", dts.d_sueldoinfo)
            cmd.Parameters.AddWithValue("@iniciasuel", dts.d_iniciasuel)
            cmd.Parameters.AddWithValue("@sdi_var", dts.d_sdi_var)
            cmd.Parameters.AddWithValue("@motivo", dts.d_motivo)
            cmd.Parameters.AddWithValue("@tipo_suel", dts.d_tipo_suel)
            cmd.Parameters.AddWithValue("@tipocontra", dts.d_tipocontra)
            cmd.Parameters.AddWithValue("@iniciacon", dts.d_iniciacon)
            cmd.Parameters.AddWithValue("@finalcon", dts.d_finalcon)
            cmd.Parameters.AddWithValue("@zona", dts.d_zona)
            cmd.Parameters.AddWithValue("@estadodir", dts.d_estadodir)
            cmd.Parameters.AddWithValue("@ciudad", dts.d_ciudad)
            cmd.Parameters.AddWithValue("@colonia", dts.d_colonia)
            cmd.Parameters.AddWithValue("@direccion", dts.d_direccion)
            cmd.Parameters.AddWithValue("@telefono", dts.d_telefono)
            cmd.Parameters.AddWithValue("@codpostal", dts.d_codpostal)
            cmd.Parameters.AddWithValue("@escolarid", dts.d_escolarid)
            cmd.Parameters.AddWithValue("@carrera", dts.d_carrera)
            cmd.Parameters.AddWithValue("@aplica_sub", dts.d_aplica_sub)
            cmd.Parameters.AddWithValue("@tipo_empl", dts.d_tipo_empl)
            cmd.Parameters.AddWithValue("@tjornada", dts.d_tjornada)
            cmd.Parameters.AddWithValue("@clavebanco", dts.d_clavebanco)
            cmd.Parameters.AddWithValue("@tregimen", dts.d_tregimen)
            cmd.Parameters.AddWithValue("@regpatron", dts.d_regpatron)
            cmd.Parameters.AddWithValue("@utilidades", dts.d_utilidades)
            cmd.Parameters.AddWithValue("@claseries", dts.d_claseries)
            cmd.Parameters.AddWithValue("@metodop", dts.d_metodop)
            'cmd.Parameters.AddWithValue("@status_exportacion", dts.d_status_exportacion)
            ' cmd.Parameters.AddWithValue("@fecha_exportacion", dts.d_fecha_exportacion)
            cmd.Parameters.AddWithValue("@user_lastupdate", dts.d_userlastupdate)

            If dts.d_motivo_rechazo = 0 Then
                cmd.Parameters.AddWithValue("@motivo_rechazo", DBNull.Value)

            Else
                cmd.Parameters.AddWithValue("@motivo_rechazo", dts.d_motivo_rechazo)
            End If

            


            If cmd.ExecuteNonQuery Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            desconectado()
        End Try
    End Function
    Public Function genera_empexpor_empdescar(ByVal dts As vCandidatos) As Boolean
        Try
            conectado()
            cmd = New SqlCommand("genera_empexpor_empdescar")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            cmd.Parameters.AddWithValue("@numero", dts.d_numero)
            cmd.Parameters.AddWithValue("@estado", dts.d_estado)
            cmd.Parameters.AddWithValue("@fechabaja", dts.d_fechabaja)
            cmd.Parameters.AddWithValue("@status_exportacion", dts.d_status_exportacion)
            cmd.Parameters.AddWithValue("@fecha_exportacion", dts.d_fecha_exportacion)
            cmd.Parameters.AddWithValue("@user_lastupdate", dts.d_userlastupdate)
       
            If cmd.ExecuteNonQuery Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            desconectado()
        End Try
    End Function

    Public Function eliminar(ByVal dts As vCandidatos) As Boolean
        Try
            conectado()
            cmd = New SqlCommand("eliminar_empleados")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Connection = cnn
            cmd.Parameters.Add("@numero", SqlDbType.VarChar, 10).Value = dts.d_numero
            If cmd.ExecuteNonQuery Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            desconectado()
        End Try

    End Function

    Public Function crearfilexls_datatable(ByVal ElGrid As DataTable) As MsgBoxResult
        'Inicialización de Excel Application Object 
        'Crear un nuevo Workbook
        Dim xlWorkBook As Excel.Workbook
        Dim xlWorkSheet As Excel.Worksheet
        Dim misValue As Object = System.Reflection.Missing.Value
        Dim i As Integer
        Dim j As Integer
        Dim fechahoy As Date = Today

        Try
            Dim xlApp As Excel.Application = New Microsoft.Office.Interop.Excel.Application()


            'Crear el contenido del worksheet
            xlWorkBook = xlApp.Workbooks.Add(misValue)
            xlWorkSheet = xlWorkBook.Sheets("Hoja1")



            For i = 0 To ElGrid.Columns.Count - 1
                xlWorkSheet.Cells(1, i + 1) = ElGrid.Columns(i).ColumnName.ToString()
            Next


            For i = 0 To ElGrid.Rows.Count - 1
               

                For j = 0 To ElGrid.Columns.Count - 1
                    If j = 19 Or j = 24 Or j = 32 Or j = 37 Then
                        Dim tdate1 As Date = ElGrid.Rows(i).Item(j).ToString
                        xlWorkSheet.Cells(i + 2, j + 1) = tdate1.ToString("dd/MM/yyyy")
                    Else
                        xlWorkSheet.Cells(i + 2, j + 1) = ElGrid.Rows(i).Item(j).ToString
                    End If

                Next

            Next

            'Revisar si existe directorio
            If Not Directory.Exists("C:\reportes\") Then
                Directory.CreateDirectory("C:\reportes\")
            End If

            'Para guardar el archivo de Excel en su sistema.
            xlWorkSheet.SaveAs("C:\reportes\empimport_" & fechahoy.ToString("dd-MM-yyyy") & ".xls", Excel.XlFileFormat.xlExcel5)
            xlWorkBook.Close()
            xlApp.Quit()
            releaseObject(xlApp)
            releaseObject(xlWorkBook)
            releaseObject(xlWorkSheet)

            Return MsgBox("El archivo se exporto con exito en: C:\reportes\empimport_" & fechahoy.ToString("dd-MM-yyyy") & ".xls")

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Return True
    End Function
    Public Function crearfilexls_Grid(ByVal ElGrid As DataGridView) As MsgBoxResult
        'Inicialización de Excel Application Object 
        Dim xlApp As Excel.Application = New Microsoft.Office.Interop.Excel.Application()

        'Crear un nuevo Workbook
        Dim xlWorkBook As Excel.Workbook
        Dim xlWorkSheet As Excel.Worksheet
        Dim misValue As Object = System.Reflection.Missing.Value
        Dim i As Integer
        Dim j As Integer
        Dim fechahoy As Date = Today


        'Crear el contenido del worksheet
        xlWorkBook = xlApp.Workbooks.Add(misValue)
        xlWorkSheet = xlWorkBook.Sheets("Hoja1")



        For i = 0 To ElGrid.Columns.Count - 1
            xlWorkSheet.Cells(1, i + 1) = ElGrid.Columns(i).Name.ToString()
        Next


        For i = 0 To ElGrid.Rows.Count - 1
            For j = 0 To ElGrid.Columns.Count - 1
                xlWorkSheet.Cells(i + 2, j + 1) = ElGrid.Rows(i).Cells(j).Value
            Next
        Next

        'Revisar si existe el directorio
        If Not Directory.Exists("C:\reportes\") Then
            Directory.CreateDirectory("C:\reportes\")
        End If

        'Para guardar el archivo de Excel en su sistema.
        xlWorkSheet.SaveAs("C:\reportes\empimport_" & fechahoy.ToString("dd-MM-yyyy") & ".xls", Excel.XlFileFormat.xlExcel5)
        xlWorkBook.Close()
        xlApp.Quit()
        releaseObject(xlApp)
        releaseObject(xlWorkBook)
        releaseObject(xlWorkSheet)

        Return MsgBox("El archivo se exporto con exito en: C:\reportes\empimport_" & fechahoy.ToString("dd-MM-yyyy") & ".xls")
    End Function
    'funcion para liberar la objecto nuestra funcion para exportar a Excel
    Private Sub releaseObject(ByVal obj As Object)
        Try
            System.Runtime.InteropServices.Marshal.ReleaseComObject(obj)
            obj = Nothing
        Catch ex As Exception
            obj = Nothing
        Finally
            GC.Collect()
        End Try
    End Sub
    Public Function AlternarColorFilasDataGridView(ByVal dvg As DataGridView) As Boolean
        Try
            With dvg
                .RowsDefaultCellStyle.BackColor = Color.LightBlue
                .AlternatingRowsDefaultCellStyle.BackColor = Color.LightCyan
            End With
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Return True

    End Function
    'Scrip compartido por el Ing. Manuel Aponte
    Public Function GridAExcel(ByVal ElGrid As DataGridView) As Boolean
        Dim exApp As New Microsoft.Office.Interop.Excel.Application
        Dim exLibro As Microsoft.Office.Interop.Excel.Workbook
        Dim exHoja As Microsoft.Office.Interop.Excel.Worksheet
        Try
            'Añadimos el Libro al programa, y la hoja al libro
            exLibro = exApp.Workbooks.Add
            exHoja = exLibro.Worksheets.Add()
            ' ¿Cuantas columnas y cuantas filas?
            Dim NCol As Integer = ElGrid.ColumnCount
            Dim NRow As Integer = ElGrid.RowCount
            'Aqui recorremos todas las filas, y por cada fila todas las columnas y vamos escribiendo.
            For i As Integer = 1 To NCol
                exHoja.Cells.Item(1, i) = ElGrid.Columns(i - 1).Name.ToString
                'exHoja.Cells.Item(1, i).HorizontalAlignment = 3
            Next
            For Fila As Integer = 0 To NRow - 1
                For Col As Integer = 0 To NCol - 1
                    exHoja.Cells.Item(Fila + 2, Col + 1) = ElGrid.Rows(Fila).Cells(Col).Value
                Next
            Next
            'Titulo en negrita, Alineado al centro y que el tamaño de la columna se ajuste al texto
            exHoja.Rows.Item(1).Font.Bold = 1
            exHoja.Rows.Item(1).HorizontalAlignment = 3
            exHoja.Columns.AutoFit()
            'Aplicación visible
            exApp.Application.Visible = True
            exHoja = Nothing
            exLibro = Nothing
            exApp = Nothing
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical, "Error al exportar a Excel")
            Return False
        End Try
        Return True

    End Function
    'Scripts para comenzar con la validación de los campos
    Public Sub validar_NumConFrac(ByVal CajaTexto As TextBox, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        ElseIf e.KeyChar = "." And Not CajaTexto.Text.IndexOf(".") Then
            e.Handled = True
        ElseIf e.KeyChar = "." Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Public Sub validar_letras(ByVal CajaTexto As TextBox, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If Char.IsLetter(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsSeparator(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Public Sub validar_Num(ByVal CajaTexto As TextBox, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
  
End Class
