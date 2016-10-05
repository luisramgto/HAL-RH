Public Class vCandidatos
    Dim numero, credencial, nombre, apellido1, apellido2, estado, edocivil, sexo, tiponom, turno As String
    Dim ccto, depto, puesto, codigopago, codahorro, politica, rfc, imss, curp, lugarorig As String
    Dim entidad, hijos, motbaja, tipo_suel, escolarid, tipo_empl, tregimen, claseries, status_exportacion, motivo_rechazo As Integer
    Dim nacional, motivo, tipocontra, zona, estadodir, ciudad, colonia, direccion, telefono, codpostal, carrera, aplica_sub, otro_motivo_rechazo As String
    Dim tjornada, clavebanco, regpatron, utilidades, metodop, user_lastupdate, fechabaja, reingreso, bajaimss, finalcon, fecha_exportacion As String
    Dim fechanac, fechaalta, iniciasuel, iniciacon As Date
    Dim sueldo, sueldoimss, sueldoinfo, sdi_var As Double

    Public Property d_numero
        Get
            Return numero
        End Get
        Set(ByVal value)
            numero = value
        End Set
    End Property
    Public Property d_credencial
        Get
            Return credencial
        End Get
        Set(ByVal value)
            credencial = value
        End Set
    End Property
    Public Property d_nombre
        Get
            Return nombre
        End Get
        Set(ByVal value)
            nombre = value
        End Set
    End Property
    Public Property d_apellido1
        Get
            Return apellido1
        End Get
        Set(ByVal value)
            apellido1 = value
        End Set
    End Property
    Public Property d_apellido2
        Get
            Return apellido2
        End Get
        Set(ByVal value)
            apellido2 = value
        End Set
    End Property
    Public Property d_estado
        Get
            Return estado
        End Get
        Set(ByVal value)
            estado = value
        End Set
    End Property
    Public Property d_edocivil
        Get
            Return edocivil
        End Get
        Set(ByVal value)
            edocivil = value
        End Set
    End Property
    Public Property d_sexo
        Get
            Return sexo
        End Get
        Set(ByVal value)
            sexo = value
        End Set
    End Property
    Public Property d_tiponom
        Get
            Return tiponom
        End Get
        Set(ByVal value)
            tiponom = value
        End Set
    End Property
    Public Property d_turno
        Get
            Return turno
        End Get
        Set(ByVal value)
            turno = value
        End Set
    End Property
    Public Property d_ccto
        Get
            Return ccto
        End Get
        Set(ByVal value)
            ccto = value
        End Set
    End Property
    Public Property d_depto
        Get
            Return depto
        End Get
        Set(ByVal value)
            depto = value
        End Set
    End Property
    Public Property d_puesto
        Get
            Return puesto
        End Get
        Set(ByVal value)
            puesto = value
        End Set
    End Property
    Public Property d_codigopago
        Get
            Return codigopago
        End Get
        Set(ByVal value)
            codigopago = value
        End Set
    End Property
    Public Property d_codahorro
        Get
            Return codahorro
        End Get
        Set(ByVal value)
            codahorro = value
        End Set
    End Property
    Public Property d_politica
        Get
            Return politica
        End Get
        Set(ByVal value)
            politica = value
        End Set
    End Property
    Public Property d_rfc
        Get
            Return rfc
        End Get
        Set(ByVal value)
            rfc = value
        End Set
    End Property
    Public Property d_imss
        Get
            Return imss
        End Get
        Set(ByVal value)
            imss = value
        End Set
    End Property
    Public Property d_curp
        Get
            Return curp
        End Get
        Set(ByVal value)
            curp = value
        End Set
    End Property
    Public Property d_fechanac
        Get
            Return fechanac
        End Get
        Set(ByVal value)
            fechanac = value
        End Set
    End Property
    Public Property d_lugarorig
        Get
            Return lugarorig
        End Get
        Set(ByVal value)
            lugarorig = value
        End Set
    End Property
    Public Property d_entidad
        Get
            Return entidad
        End Get
        Set(ByVal value)
            entidad = value
        End Set
    End Property
    Public Property d_nacional
        Get
            Return nacional
        End Get
        Set(ByVal value)
            nacional = value
        End Set
    End Property
    Public Property d_hijos
        Get
            Return hijos
        End Get
        Set(ByVal value)
            hijos = value
        End Set
    End Property
    Public Property d_fechaalta
        Get
            Return fechaalta
        End Get
        Set(ByVal value)
            fechaalta = value
        End Set
    End Property
    Public Property d_fechabaja
        Get
            Return fechabaja
        End Get
        Set(ByVal value)
            fechabaja = value
        End Set
    End Property
    Public Property d_reingreso
        Get
            Return reingreso
        End Get
        Set(ByVal value)
            reingreso = value
        End Set
    End Property
    Public Property d_bajaimss
        Get
            Return bajaimss
        End Get
        Set(ByVal value)
            bajaimss = value
        End Set
    End Property
    Public Property d_motbaja
        Get
            Return motbaja
        End Get
        Set(ByVal value)
            motbaja = value
        End Set
    End Property
    Public Property d_sueldo
        Get
            Return sueldo
        End Get
        Set(ByVal value)
            sueldo = value
        End Set
    End Property
    Public Property d_sueldoimss
        Get
            Return sueldoimss
        End Get
        Set(ByVal value)
            sueldoimss = value
        End Set
    End Property
    Public Property d_sueldoinfo
        Get
            Return sueldoinfo
        End Get
        Set(ByVal value)
            sueldoinfo = value
        End Set
    End Property
    Public Property d_iniciasuel
        Get
            Return iniciasuel
        End Get
        Set(ByVal value)
            iniciasuel = value
        End Set
    End Property
    Public Property d_sdi_var
        Get
            Return sdi_var
        End Get
        Set(ByVal value)
            sdi_var = value
        End Set
    End Property
    Public Property d_motivo
        Get
            Return motivo
        End Get
        Set(ByVal value)
            motivo = value
        End Set
    End Property
    Public Property d_tipo_suel
        Get
            Return tipo_suel
        End Get
        Set(ByVal value)
            tipo_suel = value
        End Set
    End Property
    Public Property d_tipocontra
        Get
            Return tipocontra
        End Get
        Set(ByVal value)
            tipocontra = value
        End Set
    End Property
    Public Property d_iniciacon
        Get
            Return iniciacon
        End Get
        Set(ByVal value)
            iniciacon = value
        End Set
    End Property
    Public Property d_finalcon
        Get
            Return finalcon
        End Get
        Set(ByVal value)
            finalcon = value
        End Set
    End Property
    Public Property d_zona
        Get
            Return zona
        End Get
        Set(ByVal value)
            zona = value
        End Set
    End Property
    Public Property d_estadodir
        Get
            Return estadodir
        End Get
        Set(ByVal value)
            estadodir = value
        End Set
    End Property
    Public Property d_ciudad
        Get
            Return ciudad
        End Get
        Set(ByVal value)
            ciudad = value
        End Set
    End Property
    Public Property d_colonia
        Get
            Return colonia
        End Get
        Set(ByVal value)
            colonia = value
        End Set
    End Property
    Public Property d_direccion
        Get
            Return direccion
        End Get
        Set(ByVal value)
            direccion = value
        End Set
    End Property
    Public Property d_telefono
        Get
            Return telefono
        End Get
        Set(ByVal value)
            telefono = value
        End Set
    End Property
    Public Property d_codpostal
        Get
            Return codpostal
        End Get
        Set(ByVal value)
            codpostal = value
        End Set
    End Property
    Public Property d_escolarid
        Get
            Return escolarid
        End Get
        Set(ByVal value)
            escolarid = value
        End Set
    End Property
    Public Property d_carrera
        Get
            Return carrera
        End Get
        Set(ByVal value)
            carrera = value
        End Set
    End Property

    Public Property d_aplica_sub
        Get
            Return aplica_sub
        End Get
        Set(ByVal value)
            aplica_sub = value
        End Set
    End Property
    Public Property d_tipo_empl
        Get
            Return tipo_empl
        End Get
        Set(ByVal value)
            tipo_empl = value
        End Set
    End Property
    Public Property d_tjornada
        Get
            Return tjornada
        End Get
        Set(ByVal value)
            tjornada = value
        End Set
    End Property
    Public Property d_clavebanco
        Get
            Return clavebanco
        End Get
        Set(ByVal value)
            clavebanco = value
        End Set
    End Property
    Public Property d_tregimen
        Get
            Return tregimen
        End Get
        Set(ByVal value)
            tregimen = value
        End Set
    End Property
    Public Property d_regpatron
        Get
            Return regpatron
        End Get
        Set(ByVal value)
            regpatron = value
        End Set
    End Property
    Public Property d_utilidades
        Get
            Return utilidades
        End Get
        Set(ByVal value)
            utilidades = value
        End Set
    End Property
    Public Property d_claseries
        Get
            Return claseries
        End Get
        Set(ByVal value)
            claseries = value
        End Set
    End Property
    Public Property d_metodop
        Get
            Return metodop
        End Get
        Set(ByVal value)
            metodop = value
        End Set
    End Property
    Public Property d_status_exportacion
        Get
            Return status_exportacion
        End Get
        Set(ByVal value)
            status_exportacion = value
        End Set
    End Property
    Public Property d_fecha_exportacion
        Get
            Return fecha_exportacion
        End Get
        Set(ByVal value)
            fecha_exportacion = value
        End Set
    End Property
    Public Property d_userlastupdate
        Get
            Return user_lastupdate
        End Get
        Set(ByVal value)
            user_lastupdate = value
        End Set
    End Property
    Public Property d_motivo_rechazo
        Get
            Return motivo_rechazo
        End Get
        Set(ByVal value)
            motivo_rechazo = value
        End Set
    End Property
    Public Property d_otro_motivo_rechazo
        Get
            Return otro_motivo_rechazo
        End Get
        Set(ByVal value)
            otro_motivo_rechazo = value
        End Set
    End Property
    Public Sub New(ByVal numero As String, _
                   ByVal credencial As String, _
                   ByVal nombre As String, _
                   ByVal apellido1 As String, _
                   ByVal apellido2 As String, _
                   ByVal estado As String, _
                   ByVal edocivil As String, _
                   ByVal sexo As String, _
                   ByVal tiponom As String, _
                   ByVal nturno As String, _
                   ByVal ccto As String, _
                   ByVal depto As String, _
                   ByVal puesto As String, _
                   ByVal codigopago As String, _
                   ByVal codahorro As String, _
                   ByVal politica As String, _
                   ByVal rfc As String, _
                   ByVal imss As String, _
                   ByVal curp As String, _
                   ByVal lugarorig As String, _
                   ByVal entidad As Integer, _
                   ByVal hijos As Integer, _
                   ByVal motbaja As Integer, _
                   ByVal tipo_suel As Integer, _
                   ByVal escolarid As Integer, _
                   ByVal tipo_empl As Integer, _
                   ByVal tregimen As Integer, _
                   ByVal claseries As Integer, _
                   ByVal status_exportacion As Integer, _
                   ByVal motivo_rechazo As Integer, _
                   ByVal otro_motivo_rechazo As Integer, _
                   ByVal nacional As String, _
                   ByVal motivo As String, _
                   ByVal tipocontra As String, _
                   ByVal zona As String, _
                   ByVal estadodir As String, _
                   ByVal ciudad As String, _
                   ByVal colonia As String, _
                   ByVal direccion As String, _
                   ByVal telefono As String, _
                   ByVal codpostal As String, _
                   ByVal carrera As String, _
                   ByVal aplica_sub As String, _
                   ByVal tjornada As String, _
                   ByVal clavebanco As String, _
                   ByVal regpatron As String, _
                   ByVal utilidades As String, _
                   ByVal metodop As String, _
                   ByVal user_lastupdate As String, _
                   ByVal fechanac As Date, _
                   ByVal fechaalta As Date, _
                   ByVal fechabaja As String, _
                   ByVal reingreso As String, _
                   ByVal bajaimss As String, _
                   ByVal iniciasuel As Date, _
                   ByVal iniciacon As Date, _
                   ByVal finalcon As String, _
                   ByVal fecha_exportacion As String, _
                   ByVal sueldo As Double, _
                   ByVal sueldoimss As Double, _
                   ByVal sueldoinfo As Double, _
                   ByVal sdi_var As Double)




        d_numero = numero
        d_credencial = credencial
        d_nombre = nombre
        d_apellido1 = apellido1
        d_apellido2 = apellido2
        d_estado = estado
        d_edocivil = edocivil
        d_sexo = sexo
        d_tiponom = tiponom
        d_turno = turno
        d_ccto = ccto
        d_depto = d_depto
        d_puesto = puesto
        d_codigopago = codigopago
        d_codahorro = codahorro
        d_politica = politica
        d_rfc = rfc
        d_imss = imss
        d_curp = curp
        d_fechanac = d_fechanac
        d_lugarorig = lugarorig
        d_entidad = entidad
        d_nacional = nacional
        d_hijos = hijos
        d_fechaalta = fechaalta
        d_fechabaja = fechabaja
        d_reingreso = reingreso
        d_bajaimss = bajaimss
        d_motbaja = motbaja
        d_sueldo = sueldo
        d_sueldoimss = sueldoimss
        d_sueldoinfo = sueldoinfo
        d_iniciasuel = iniciasuel
        d_sdi_var = sdi_var
        d_motivo = motivo
        d_tipo_suel = tipo_suel
        d_tipocontra = tipocontra
        d_iniciacon = iniciacon
        d_finalcon = finalcon
        d_zona = zona
        d_estadodir = estadodir
        d_ciudad = ciudad
        d_colonia = colonia
        d_direccion = direccion
        d_telefono = telefono
        d_codpostal = codpostal
        d_escolarid = escolarid
        d_carrera = carrera
        d_aplica_sub = aplica_sub
        d_tipo_empl = tipo_empl
        d_tjornada = tjornada
        d_clavebanco = clavebanco
        d_tregimen = tregimen
        d_regpatron = regpatron
        d_utilidades = utilidades
        d_claseries = claseries
        d_metodop = metodop
        d_status_exportacion = status_exportacion
        d_fecha_exportacion = fecha_exportacion
        d_userlastupdate = user_lastupdate
        d_motivo_rechazo = motivo_rechazo
        d_otro_motivo_rechazo = otro_motivo_rechazo


    End Sub

    Public Sub New()

    End Sub
End Class
