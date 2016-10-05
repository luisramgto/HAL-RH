Imports System.Windows.Forms

Public Class frminicio
    Dim loguser As String

    'TITULO:  .....::: SISTEMA RH - RECLUTAMIENTO :::.....
    'DESCRIPCIÓN / ALCANCE: PROGRAMA QUE PERMITE REGISTRAR CANDIDATOS PARA RECLUTAMIENTO Y PERMITE TENER UN HISTORICO DE CANDIDATOS CON STATUS SI EL CANDIDATO A SIDO O NO CONTRADO Y EXPORTADO A SISTEMA SIASA - NOMIPLUS
    'FECHA: 20-09-2016
    'EMPRESA: HAL MEXICO  - PLANTA SANTA FE
    'LIDER DE DESARROLLO / USUARIO / CLIENTE: ING. OJENDIZ LEMUS HUGO MANUEL E ING. JOSE MANUEL APONTE RAMIREZ
    'DESARROLLO: LIC. LUIS RAMIREZ VAZQUEZ
    'EMAIL: ramirezl@halmex.com.mx - lsia.luisram@gmail.com




    Private Sub ShowNewForm(ByVal sender As Object, ByVal e As EventArgs)
        ' Create a new instance of the child form.
        Dim ChildForm As New System.Windows.Forms.Form
        ' Make it a child of this MDI form before showing it.
        ChildForm.MdiParent = Me

        m_ChildFormNumber += 1
        ChildForm.Text = "Window " & m_ChildFormNumber

        ChildForm.Show()
    End Sub

    Private Sub OpenFile(ByVal sender As Object, ByVal e As EventArgs)
        Dim OpenFileDialog As New OpenFileDialog
        OpenFileDialog.InitialDirectory = My.Computer.FileSystem.SpecialDirectories.MyDocuments
        OpenFileDialog.Filter = "Text Files (*.txt)|*.txt|All Files (*.*)|*.*"
        If (OpenFileDialog.ShowDialog(Me) = System.Windows.Forms.DialogResult.OK) Then
            Dim FileName As String = OpenFileDialog.FileName
            ' TODO: Add code here to open the file.
        End If
    End Sub

    Private Sub SaveAsToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim SaveFileDialog As New SaveFileDialog
        SaveFileDialog.InitialDirectory = My.Computer.FileSystem.SpecialDirectories.MyDocuments
        SaveFileDialog.Filter = "Text Files (*.txt)|*.txt|All Files (*.*)|*.*"

        If (SaveFileDialog.ShowDialog(Me) = System.Windows.Forms.DialogResult.OK) Then
            Dim FileName As String = SaveFileDialog.FileName
            ' TODO: Add code here to save the current contents of the form to a file.
        End If
    End Sub


    Private Sub ExitToolsStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        Me.Close()
    End Sub

    Private Sub CutToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Use My.Computer.Clipboard to insert the selected text or images into the clipboard
    End Sub

    Private Sub CopyToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Use My.Computer.Clipboard to insert the selected text or images into the clipboard
    End Sub

    Private Sub PasteToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
        'Use My.Computer.Clipboard.GetText() or My.Computer.Clipboard.GetData to retrieve information from the clipboard.
    End Sub

    Private Sub StatusBarToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs) Handles StatusBarToolStripMenuItem.Click
        Me.StatusStrip.Visible = Me.StatusBarToolStripMenuItem.Checked
    End Sub

    Private Sub CascadeToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CascadeToolStripMenuItem.Click
        Me.LayoutMdi(MdiLayout.Cascade)
    End Sub

    Private Sub TileVerticalToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs) Handles TileVerticalToolStripMenuItem.Click
        Me.LayoutMdi(MdiLayout.TileVertical)
    End Sub

    Private Sub TileHorizontalToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs) Handles TileHorizontalToolStripMenuItem.Click
        Me.LayoutMdi(MdiLayout.TileHorizontal)
    End Sub

    Private Sub ArrangeIconsToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ArrangeIconsToolStripMenuItem.Click
        Me.LayoutMdi(MdiLayout.ArrangeIcons)
    End Sub

    Private Sub CloseAllToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CloseAllToolStripMenuItem.Click
        ' Close all child forms of the parent.
        For Each ChildForm As Form In Me.MdiChildren
            ChildForm.Close()
        Next
        
    End Sub

    Private m_ChildFormNumber As Integer
    Private Sub frminicio_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim dts2 As New vlogin
        tsslbl_user.Text = UCase(frmlogin.txtlogin.Text)
       
    End Sub

    Private Sub frminicio_FormClosing(sender As Object, e As FormClosingEventArgs) Handles MyBase.FormClosing
        If (MessageBox.Show("¿Estás seguro de que quieres salir del sistema?", _
                            "Confirmación de usuario", _
                            MessageBoxButtons.YesNo, _
                            MessageBoxIcon.Exclamation) = MsgBoxResult.Yes) Then

            End
        Else
            e.Cancel = True
        End If

    End Sub

    Private Sub ProspectosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProspectosToolStripMenuItem.Click
        Dim vfrmcandidatos As frmcandidatos = frmcandidatos.getinstancia()
        vfrmcandidatos.MdiParent = Me
        vfrmcandidatos.Show()

    End Sub

    Private Sub CandidatosRechazadosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CandidatosRechazadosToolStripMenuItem.Click
        Dim vfrmcandidatos_rechazados As frmcandidatos_rechazados = frmcandidatos_rechazados.getinstancia()
        vfrmcandidatos_rechazados.MdiParent = Me
        vfrmcandidatos_rechazados.Show()
    End Sub
    Private Sub CandidatosAceptadosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CandidatosAceptadosToolStripMenuItem.Click
        Dim vfrmcandidatos_aceptados As frmcandidatos_aceptados = frmcandidatos_aceptados.getinstancia()
        vfrmcandidatos_aceptados.MdiParent = Me
        vfrmcandidatos_aceptados.Show()
    End Sub
    Private Sub btn_OK_Click(sender As Object, e As EventArgs)
        Dim vfrmcandidatos As frmcandidatos = frmcandidatos.getinstancia()
   
        vfrmcandidatos.MdiParent = Me
        vfrmcandidatos.Show()

    End Sub

    Private Sub btn_RECHAZADOS_Click(sender As Object, e As EventArgs)
        Dim vfrmcandidatos_rechazados As frmcandidatos_rechazados = frmcandidatos_rechazados.getinstancia()
     
        vfrmcandidatos_rechazados.MdiParent = Me
        vfrmcandidatos_rechazados.Show()

    End Sub

    
    Private Sub ToolStripButton1_Click(sender As Object, e As EventArgs)

    End Sub
End Class
