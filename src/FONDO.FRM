VERSION 2.00
Begin Form frmFondo 
   BackColor       =   &H00808000&
   ClientHeight    =   2940
   ClientLeft      =   90
   ClientTop       =   1395
   ClientWidth     =   3105
   ControlBox      =   0   'False
   Height          =   3345
   Icon            =   FONDO.FRX:0000
   Left            =   30
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2940
   ScaleWidth      =   3105
   Top             =   1050
   Width           =   3225
   WindowState     =   2  'Maximized
End

Sub Form_Activate ()
frmMenuPrincipal.Show 1
End Sub

