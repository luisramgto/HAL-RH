<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmcandidatos
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmcandidatos))
        Me.lbl_titulo = New System.Windows.Forms.Label()
        Me.gbox_candidatos = New System.Windows.Forms.GroupBox()
        Me.ProgressBar1 = New System.Windows.Forms.ProgressBar()
        Me.lbl_inexistente = New System.Windows.Forms.LinkLabel()
        Me.dgv_NUEVOSITEMS = New System.Windows.Forms.DataGridView()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.btnexportar = New System.Windows.Forms.Button()
        Me.btn_cancelar = New System.Windows.Forms.Button()
        Me.Btnnuevo = New System.Windows.Forms.Button()
        Me.btneliminar = New System.Windows.Forms.Button()
        Me.btnmostrar = New System.Windows.Forms.Button()
        Me.btneditar = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.btn_BUSCARRANGO = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.dtp_FECHA01 = New System.Windows.Forms.DateTimePicker()
        Me.dtp_FECHA02 = New System.Windows.Forms.DateTimePicker()
        Me.cbocampo = New System.Windows.Forms.ComboBox()
        Me.btnbuscar = New System.Windows.Forms.Button()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtbuscar = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btnLastPage = New System.Windows.Forms.Button()
        Me.txtDisplayPageNo = New System.Windows.Forms.TextBox()
        Me.btnNextPage = New System.Windows.Forms.Button()
        Me.btnPreviousPage = New System.Windows.Forms.Button()
        Me.btnFirstPage = New System.Windows.Forms.Button()
        Me.gbox_candidatos.SuspendLayout()
        CType(Me.dgv_NUEVOSITEMS, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.SuspendLayout()
        '
        'lbl_titulo
        '
        resources.ApplyResources(Me.lbl_titulo, "lbl_titulo")
        Me.lbl_titulo.ForeColor = System.Drawing.Color.DarkCyan
        Me.lbl_titulo.Name = "lbl_titulo"
        '
        'gbox_candidatos
        '
        resources.ApplyResources(Me.gbox_candidatos, "gbox_candidatos")
        Me.gbox_candidatos.Controls.Add(Me.ProgressBar1)
        Me.gbox_candidatos.Controls.Add(Me.lbl_inexistente)
        Me.gbox_candidatos.Controls.Add(Me.dgv_NUEVOSITEMS)
        Me.gbox_candidatos.Name = "gbox_candidatos"
        Me.gbox_candidatos.TabStop = False
        '
        'ProgressBar1
        '
        resources.ApplyResources(Me.ProgressBar1, "ProgressBar1")
        Me.ProgressBar1.Name = "ProgressBar1"
        '
        'lbl_inexistente
        '
        resources.ApplyResources(Me.lbl_inexistente, "lbl_inexistente")
        Me.lbl_inexistente.LinkColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer))
        Me.lbl_inexistente.Name = "lbl_inexistente"
        Me.lbl_inexistente.TabStop = True
        '
        'dgv_NUEVOSITEMS
        '
        Me.dgv_NUEVOSITEMS.AllowUserToOrderColumns = True
        Me.dgv_NUEVOSITEMS.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.dgv_NUEVOSITEMS.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        resources.ApplyResources(Me.dgv_NUEVOSITEMS, "dgv_NUEVOSITEMS")
        Me.dgv_NUEVOSITEMS.MultiSelect = False
        Me.dgv_NUEVOSITEMS.Name = "dgv_NUEVOSITEMS"
        Me.dgv_NUEVOSITEMS.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.btnexportar)
        Me.GroupBox1.Controls.Add(Me.btn_cancelar)
        Me.GroupBox1.Controls.Add(Me.Btnnuevo)
        Me.GroupBox1.Controls.Add(Me.btneliminar)
        Me.GroupBox1.Controls.Add(Me.btnmostrar)
        Me.GroupBox1.Controls.Add(Me.btneditar)
        resources.ApplyResources(Me.GroupBox1, "GroupBox1")
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.TabStop = False
        '
        'btnexportar
        '
        resources.ApplyResources(Me.btnexportar, "btnexportar")
        Me.btnexportar.BackColor = System.Drawing.Color.DarkCyan
        Me.btnexportar.ForeColor = System.Drawing.Color.White
        Me.btnexportar.Name = "btnexportar"
        Me.btnexportar.UseVisualStyleBackColor = False
        '
        'btn_cancelar
        '
        resources.ApplyResources(Me.btn_cancelar, "btn_cancelar")
        Me.btn_cancelar.BackColor = System.Drawing.Color.DarkCyan
        Me.btn_cancelar.ForeColor = System.Drawing.Color.White
        Me.btn_cancelar.Name = "btn_cancelar"
        Me.btn_cancelar.UseVisualStyleBackColor = False
        '
        'Btnnuevo
        '
        resources.ApplyResources(Me.Btnnuevo, "Btnnuevo")
        Me.Btnnuevo.BackColor = System.Drawing.Color.DarkCyan
        Me.Btnnuevo.ForeColor = System.Drawing.Color.White
        Me.Btnnuevo.Name = "Btnnuevo"
        Me.Btnnuevo.UseVisualStyleBackColor = False
        '
        'btneliminar
        '
        resources.ApplyResources(Me.btneliminar, "btneliminar")
        Me.btneliminar.BackColor = System.Drawing.Color.DarkCyan
        Me.btneliminar.ForeColor = System.Drawing.Color.White
        Me.btneliminar.Name = "btneliminar"
        Me.btneliminar.UseVisualStyleBackColor = False
        '
        'btnmostrar
        '
        resources.ApplyResources(Me.btnmostrar, "btnmostrar")
        Me.btnmostrar.BackColor = System.Drawing.Color.DarkCyan
        Me.btnmostrar.ForeColor = System.Drawing.Color.White
        Me.btnmostrar.Name = "btnmostrar"
        Me.btnmostrar.UseVisualStyleBackColor = False
        '
        'btneditar
        '
        resources.ApplyResources(Me.btneditar, "btneditar")
        Me.btneditar.BackColor = System.Drawing.Color.DarkCyan
        Me.btneditar.ForeColor = System.Drawing.Color.White
        Me.btneditar.Name = "btneditar"
        Me.btneditar.UseVisualStyleBackColor = False
        '
        'GroupBox2
        '
        resources.ApplyResources(Me.GroupBox2, "GroupBox2")
        Me.GroupBox2.Controls.Add(Me.GroupBox3)
        Me.GroupBox2.Controls.Add(Me.cbocampo)
        Me.GroupBox2.Controls.Add(Me.btnbuscar)
        Me.GroupBox2.Controls.Add(Me.Label4)
        Me.GroupBox2.Controls.Add(Me.txtbuscar)
        Me.GroupBox2.Controls.Add(Me.lbl_titulo)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.TabStop = False
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.btn_BUSCARRANGO)
        Me.GroupBox3.Controls.Add(Me.Label1)
        Me.GroupBox3.Controls.Add(Me.dtp_FECHA01)
        Me.GroupBox3.Controls.Add(Me.dtp_FECHA02)
        resources.ApplyResources(Me.GroupBox3, "GroupBox3")
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.TabStop = False
        '
        'btn_BUSCARRANGO
        '
        Me.btn_BUSCARRANGO.BackColor = System.Drawing.Color.DarkCyan
        resources.ApplyResources(Me.btn_BUSCARRANGO, "btn_BUSCARRANGO")
        Me.btn_BUSCARRANGO.ForeColor = System.Drawing.Color.White
        Me.btn_BUSCARRANGO.Name = "btn_BUSCARRANGO"
        Me.btn_BUSCARRANGO.UseVisualStyleBackColor = False
        '
        'Label1
        '
        resources.ApplyResources(Me.Label1, "Label1")
        Me.Label1.Name = "Label1"
        '
        'dtp_FECHA01
        '
        resources.ApplyResources(Me.dtp_FECHA01, "dtp_FECHA01")
        Me.dtp_FECHA01.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_FECHA01.Name = "dtp_FECHA01"
        '
        'dtp_FECHA02
        '
        resources.ApplyResources(Me.dtp_FECHA02, "dtp_FECHA02")
        Me.dtp_FECHA02.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_FECHA02.Name = "dtp_FECHA02"
        '
        'cbocampo
        '
        Me.cbocampo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbocampo.FormattingEnabled = True
        resources.ApplyResources(Me.cbocampo, "cbocampo")
        Me.cbocampo.Name = "cbocampo"
        '
        'btnbuscar
        '
        Me.btnbuscar.BackColor = System.Drawing.Color.DarkCyan
        resources.ApplyResources(Me.btnbuscar, "btnbuscar")
        Me.btnbuscar.ForeColor = System.Drawing.Color.White
        Me.btnbuscar.Name = "btnbuscar"
        Me.btnbuscar.UseVisualStyleBackColor = False
        '
        'Label4
        '
        resources.ApplyResources(Me.Label4, "Label4")
        Me.Label4.ForeColor = System.Drawing.Color.DarkCyan
        Me.Label4.Name = "Label4"
        '
        'txtbuscar
        '
        resources.ApplyResources(Me.txtbuscar, "txtbuscar")
        Me.txtbuscar.Name = "txtbuscar"
        '
        'Label2
        '
        resources.ApplyResources(Me.Label2, "Label2")
        Me.Label2.Name = "Label2"
        '
        'btnLastPage
        '
        resources.ApplyResources(Me.btnLastPage, "btnLastPage")
        Me.btnLastPage.FlatAppearance.BorderSize = 0
        Me.btnLastPage.Image = Global.RH.My.Resources.Resources.arrow_last_icon
        Me.btnLastPage.Name = "btnLastPage"
        Me.btnLastPage.UseVisualStyleBackColor = True
        '
        'txtDisplayPageNo
        '
        resources.ApplyResources(Me.txtDisplayPageNo, "txtDisplayPageNo")
        Me.txtDisplayPageNo.Name = "txtDisplayPageNo"
        '
        'btnNextPage
        '
        resources.ApplyResources(Me.btnNextPage, "btnNextPage")
        Me.btnNextPage.FlatAppearance.BorderSize = 0
        Me.btnNextPage.Image = Global.RH.My.Resources.Resources.arrow_next_icon
        Me.btnNextPage.Name = "btnNextPage"
        Me.btnNextPage.UseVisualStyleBackColor = True
        '
        'btnPreviousPage
        '
        resources.ApplyResources(Me.btnPreviousPage, "btnPreviousPage")
        Me.btnPreviousPage.FlatAppearance.BorderSize = 0
        Me.btnPreviousPage.Image = Global.RH.My.Resources.Resources.arrow_previous_icon
        Me.btnPreviousPage.Name = "btnPreviousPage"
        Me.btnPreviousPage.UseVisualStyleBackColor = True
        '
        'btnFirstPage
        '
        resources.ApplyResources(Me.btnFirstPage, "btnFirstPage")
        Me.btnFirstPage.FlatAppearance.BorderSize = 0
        Me.btnFirstPage.Image = Global.RH.My.Resources.Resources.arrow_first_icon
        Me.btnFirstPage.Name = "btnFirstPage"
        Me.btnFirstPage.UseVisualStyleBackColor = True
        '
        'frmcandidatos
        '
        resources.ApplyResources(Me, "$this")
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi
        Me.Controls.Add(Me.btnLastPage)
        Me.Controls.Add(Me.txtDisplayPageNo)
        Me.Controls.Add(Me.btnNextPage)
        Me.Controls.Add(Me.btnPreviousPage)
        Me.Controls.Add(Me.btnFirstPage)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.gbox_candidatos)
        Me.MinimizeBox = False
        Me.Name = "frmcandidatos"
        Me.gbox_candidatos.ResumeLayout(False)
        Me.gbox_candidatos.PerformLayout()
        CType(Me.dgv_NUEVOSITEMS, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lbl_titulo As System.Windows.Forms.Label
    Friend WithEvents gbox_candidatos As System.Windows.Forms.GroupBox
    Friend WithEvents dgv_NUEVOSITEMS As System.Windows.Forms.DataGridView
    Friend WithEvents lbl_inexistente As System.Windows.Forms.LinkLabel
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btnexportar As System.Windows.Forms.Button
    Friend WithEvents Btnnuevo As System.Windows.Forms.Button
    Friend WithEvents btneliminar As System.Windows.Forms.Button
    Friend WithEvents btnmostrar As System.Windows.Forms.Button
    Friend WithEvents btneditar As System.Windows.Forms.Button
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents cbocampo As System.Windows.Forms.ComboBox
    Friend WithEvents btnbuscar As System.Windows.Forms.Button
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtbuscar As System.Windows.Forms.TextBox
    Friend WithEvents btn_cancelar As System.Windows.Forms.Button
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents dtp_FECHA01 As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtp_FECHA02 As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btn_BUSCARRANGO As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents btnLastPage As System.Windows.Forms.Button
    Friend WithEvents txtDisplayPageNo As System.Windows.Forms.TextBox
    Friend WithEvents btnNextPage As System.Windows.Forms.Button
    Friend WithEvents btnPreviousPage As System.Windows.Forms.Button
    Friend WithEvents btnFirstPage As System.Windows.Forms.Button
    Friend WithEvents ProgressBar1 As System.Windows.Forms.ProgressBar
End Class
