$PBExportHeader$googlecharts.sra
$PBExportComments$Generated Application Object
forward
global type googlecharts from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
String gs_GraphType = "line"
Boolean gb_is3D
end variables

global type googlecharts from application
string appname = "googlecharts"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 21.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 3
long richtexteditx64type = 3
long richtexteditversion = 2
string richtexteditkey = ""
string appicon = "png\chartapp.ico"
string appruntimeversion = "21.0.0.1288"
boolean manualsession = false
boolean unsupportedapierror = true
end type
global googlecharts googlecharts

on googlecharts.create
appname="googlecharts"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on googlecharts.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile PB Demo DB V2021
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=PB Demo DB V2021;UID=dba;PWD=sql'"
Connect;

If SQLCA.sqlcode <> 0 Then
	MessageBox ("Sorry! Cannot Connect To Database", SQLCA.sqlerrtext)
	Halt Close
	Return
End If

String ls_theme

ls_Theme = "Flat Design Blue"
applytheme(GetCurrentDirectory( ) + "\Theme\" + ls_theme)


Open(w_mdi)

end event

event systemerror;Choose Case error.Number
        Case 220  to 229 //Session Error
                 MessageBox ("Session Error", "Number:" + String(error.Number) + "~r~nText:" + error.Text )
        Case 230  to 239 //License Error
                 MessageBox ("License Error", "Number:" + String(error.Number) + "~r~nText:" + error.Text )
        Case 240  to 249 //Token Error
                 MessageBox ("Token Error", "Number:" + String(error.Number) + "~r~nText:" + error.Text )
        Case Else
                 MessageBox ("SystemError", "Number:" + String(error.Number) + "~r~nText:" + error.Text )
End Choose

end event

