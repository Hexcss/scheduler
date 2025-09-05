VERSION 2.00
Begin Form frmMenuPrincipal 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Double
   ClientHeight    =   4020
   ClientLeft      =   2115
   ClientTop       =   1650
   ClientWidth     =   5670
   ControlBox      =   0   'False
   Height          =   4425
   Left            =   2055
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4020
   ScaleWidth      =   5670
   Top             =   1305
   Width           =   5790
   Begin SSCommand btnAcercaDe 
      AutoSize        =   2  'Adjust Button Size To Picture
      BevelWidth      =   1
      Caption         =   "Acerca de.."
      ForeColor       =   &H00000080&
      Height          =   1005
      Left            =   3060
      Outline         =   0   'False
      Picture         =   FRMMENUP.FRX:0000
      RoundedCorners  =   0   'False
      TabIndex        =   11
      Top             =   2880
      Width           =   1185
   End
   Begin SSCommand btnSalir 
      AutoSize        =   2  'Adjust Button Size To Picture
      BevelWidth      =   1
      Caption         =   "Salir"
      ForeColor       =   &H00000080&
      Height          =   1005
      Left            =   4500
      Outline         =   0   'False
      Picture         =   FRMMENUP.FRX:0302
      RoundedCorners  =   0   'False
      TabIndex        =   10
      Top             =   2880
      Width           =   1095
   End
   Begin SSCommand btnHorario2 
      AutoSize        =   2  'Adjust Button Size To Picture
      BevelWidth      =   1
      Caption         =   "Reporte"
      ForeColor       =   &H00000080&
      Height          =   1005
      Left            =   1620
      Outline         =   0   'False
      Picture         =   FRMMENUP.FRX:073C
      RoundedCorners  =   0   'False
      TabIndex        =   9
      Top             =   2880
      Width           =   1185
   End
   Begin CrystalReport rptHorario 
      BoundReportFooter=   0   'False
      BoundReportHeading=   ""
      Connect         =   ""
      CopiesToPrinter =   1
      Destination     =   0  'Window
      DetailCopies    =   1
      DiscardSavedData=   0   'False
      EMailCCList     =   ""
      EMailMessage    =   ""
      EMailSubject    =   ""
      EMailToList     =   ""
      EMailVIMBCCList =   ""
      GroupSelectionFormula=   ""
      Left            =   5130
      MarginBottom    =   0
      MarginLeft      =   0
      MarginRight     =   0
      MarginTop       =   0
      PrinterCollation=   2  'default
      PrinterCopies   =   1
      PrinterDriver   =   ""
      PrinterName     =   ""
      PrinterPort     =   ""
      PrinterStartPage=   0
      PrinterStopPage =   0
      PrintFileCharSepQuote=   ""
      PrintFileCharSepSeparator=   ""
      PrintFileName   =   ""
      PrintFileType   =   2  'Text
      PrintFileUseRptDateFmt=   0   'False
      PrintFileUseRptNumberFmt=   0   'False
      ReportFileName  =   "c:\sighor\reporte\susana.rpt"
      ReportSource    =   0  'Report File
      ReportTitle     =   ""
      SelectionFormula=   ""
      SessionHandle   =   0
      SQLQuery        =   ""
      Top             =   630
      UserName        =   ""
      WindowBorderStyle=   2  'Sizable
      WindowControlBox=   -1  'True
      WindowControls  =   -1  'True
      WindowHeight    =   300
      WindowLeft      =   100
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      WindowParentHandle=   0
      WindowState     =   2  'maximized
      WindowTitle     =   ""
      WindowTop       =   100
      WindowWidth     =   480
   End
   Begin SSCommand btnHorario1 
      AutoSize        =   2  'Adjust Button Size To Picture
      BevelWidth      =   1
      Caption         =   "Ver Horario"
      ForeColor       =   &H00000080&
      Height          =   1005
      Left            =   90
      Outline         =   0   'False
      Picture         =   FRMMENUP.FRX:0B76
      RoundedCorners  =   0   'False
      TabIndex        =   8
      Top             =   2880
      Width           =   1185
   End
   Begin SSPanel panExplicacion 
      BevelOuter      =   1  'Inset
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   375
      Left            =   2880
      TabIndex        =   7
      Top             =   2250
      Width           =   2715
   End
   Begin SSPanel Panel3D1 
      BevelOuter      =   1  'Inset
      Caption         =   "Panel3D1"
      FloodType       =   1  'Left To Right
      Height          =   375
      Left            =   90
      TabIndex        =   6
      Top             =   2250
      Width           =   2715
   End
   Begin SSCommand btnGeneraHorario 
      AutoSize        =   2  'Adjust Button Size To Picture
      BevelWidth      =   1
      Font3D          =   1  'Raised w/light shading
      ForeColor       =   &H00000080&
      Height          =   540
      Left            =   180
      Outline         =   0   'False
      Picture         =   FRMMENUP.FRX:0FB0
      RoundedCorners  =   0   'False
      TabIndex        =   4
      Top             =   1530
      Width           =   540
   End
   Begin SSCommand Command3D1 
      AutoSize        =   2  'Adjust Button Size To Picture
      BevelWidth      =   1
      Font3D          =   1  'Raised w/light shading
      ForeColor       =   &H00000080&
      Height          =   540
      Left            =   180
      Outline         =   0   'False
      Picture         =   FRMMENUP.FRX:12B2
      RoundedCorners  =   0   'False
      TabIndex        =   0
      Top             =   810
      Width           =   540
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   0
      X2              =   5850
      Y1              =   2700
      Y2              =   2700
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   -90
      X2              =   5760
      Y1              =   2160
      Y2              =   2160
   End
   Begin Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   " Generación del Horario"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "Courier New"
      FontSize        =   13.5
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   3
      Left            =   720
      TabIndex        =   5
      Top             =   1710
      Width           =   3885
   End
   Begin Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   " Módulos de definición"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "Courier New"
      FontSize        =   13.5
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   2
      Left            =   720
      TabIndex        =   3
      Top             =   990
      Width           =   3795
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   -90
      X2              =   5760
      Y1              =   540
      Y2              =   540
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sistema Generador de Horarios"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "Courier New"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   1
      Left            =   2070
      TabIndex        =   2
      Top             =   180
      Width           =   3480
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "SigHor"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "Courier New"
      FontSize        =   18
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   405
      Index           =   0
      Left            =   90
      TabIndex        =   1
      Top             =   90
      Width           =   1260
   End
End
Option Explicit

Sub btnAcercaDe_Click ()
  frmAcercaDe.Show 1
End Sub

Sub btnGeneraHorario_Click ()



Screen.MousePointer = 11
  PanExplicacion.Caption = "Analizando H"
  PrepararH

  PanExplicacion.Caption = "Horario alfa"
  GeneraPreHorario

  PanExplicacion.Caption = "Horario beta"
  Panel3D1.FloodPercent = 45
  GeneraHorario

  PanExplicacion.Caption = "Horario final"
  Panel3D1.FloodPercent = 75
  IngresoHE


  PanExplicacion.Caption = "Compactando..."
  
  Panel3D1.FloodPercent = 90
  CompactarBaseDeDatos
  
  Panel3D1.FloodPercent = 100
  Screen.MousePointer = 0

MsgBox "Horario Generado"

End Sub

Sub btnHorario1_Click ()
  frmHorario.Show 1
End Sub

Sub btnHorario2_Click ()
  rptHorario.Action = 1
End Sub

Sub btnSalir_Click ()
  MsgBox "Gracias por usar SigHor", , "Salir"
  End
End Sub

Sub Command3D1_Click ()
  frmMenu.Show 1
End Sub

Sub Form_Activate ()
  centra Me
End Sub

