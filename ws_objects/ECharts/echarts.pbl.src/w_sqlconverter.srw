$PBExportHeader$w_sqlconverter.srw
forward
global type w_sqlconverter from w_chart_base
end type
type st_22 from statictext within w_sqlconverter
end type
type st_21 from statictext within w_sqlconverter
end type
type st_19 from statictext within w_sqlconverter
end type
type st_18 from statictext within w_sqlconverter
end type
type st_17 from statictext within w_sqlconverter
end type
type cb_2 from commandbutton within w_sqlconverter
end type
type st_13 from statictext within w_sqlconverter
end type
type sle_value from singlelineedit within w_sqlconverter
end type
type sle_category from singlelineedit within w_sqlconverter
end type
type st_12 from statictext within w_sqlconverter
end type
type st_11 from statictext within w_sqlconverter
end type
type mle_1 from multilineedit within w_sqlconverter
end type
type st_10 from statictext within w_sqlconverter
end type
type mle_4 from multilineedit within w_sqlconverter
end type
type st_9 from statictext within w_sqlconverter
end type
type em_width from editmask within w_sqlconverter
end type
type cb_1 from commandbutton within w_sqlconverter
end type
type cbx_rosetype from checkbox within w_sqlconverter
end type
type cbx_datazoom from checkbox within w_sqlconverter
end type
type cbx_toolbox from checkbox within w_sqlconverter
end type
type st_5 from statictext within w_sqlconverter
end type
type ddlb_style from dropdownlistbox within w_sqlconverter
end type
type st_4 from statictext within w_sqlconverter
end type
type ddlb_theme from dropdownlistbox within w_sqlconverter
end type
type em_height from editmask within w_sqlconverter
end type
type st_3 from statictext within w_sqlconverter
end type
type st_2 from statictext within w_sqlconverter
end type
type sle_title from singlelineedit within w_sqlconverter
end type
type st_1 from statictext within w_sqlconverter
end type
end forward

global type w_sqlconverter from w_chart_base
string tag = "sqlconverter"
integer width = 4425
integer height = 2752
string icon = "png\echarts.ico"
st_22 st_22
st_21 st_21
st_19 st_19
st_18 st_18
st_17 st_17
cb_2 cb_2
st_13 st_13
sle_value sle_value
sle_category sle_category
st_12 st_12
st_11 st_11
mle_1 mle_1
st_10 st_10
mle_4 mle_4
st_9 st_9
em_width em_width
cb_1 cb_1
cbx_rosetype cbx_rosetype
cbx_datazoom cbx_datazoom
cbx_toolbox cbx_toolbox
st_5 st_5
ddlb_style ddlb_style
st_4 st_4
ddlb_theme ddlb_theme
em_height em_height
st_3 st_3
st_2 st_2
sle_title sle_title
st_1 st_1
end type
global w_sqlconverter w_sqlconverter

on w_sqlconverter.create
int iCurrent
call super::create
this.st_22=create st_22
this.st_21=create st_21
this.st_19=create st_19
this.st_18=create st_18
this.st_17=create st_17
this.cb_2=create cb_2
this.st_13=create st_13
this.sle_value=create sle_value
this.sle_category=create sle_category
this.st_12=create st_12
this.st_11=create st_11
this.mle_1=create mle_1
this.st_10=create st_10
this.mle_4=create mle_4
this.st_9=create st_9
this.em_width=create em_width
this.cb_1=create cb_1
this.cbx_rosetype=create cbx_rosetype
this.cbx_datazoom=create cbx_datazoom
this.cbx_toolbox=create cbx_toolbox
this.st_5=create st_5
this.ddlb_style=create ddlb_style
this.st_4=create st_4
this.ddlb_theme=create ddlb_theme
this.em_height=create em_height
this.st_3=create st_3
this.st_2=create st_2
this.sle_title=create sle_title
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_22
this.Control[iCurrent+2]=this.st_21
this.Control[iCurrent+3]=this.st_19
this.Control[iCurrent+4]=this.st_18
this.Control[iCurrent+5]=this.st_17
this.Control[iCurrent+6]=this.cb_2
this.Control[iCurrent+7]=this.st_13
this.Control[iCurrent+8]=this.sle_value
this.Control[iCurrent+9]=this.sle_category
this.Control[iCurrent+10]=this.st_12
this.Control[iCurrent+11]=this.st_11
this.Control[iCurrent+12]=this.mle_1
this.Control[iCurrent+13]=this.st_10
this.Control[iCurrent+14]=this.mle_4
this.Control[iCurrent+15]=this.st_9
this.Control[iCurrent+16]=this.em_width
this.Control[iCurrent+17]=this.cb_1
this.Control[iCurrent+18]=this.cbx_rosetype
this.Control[iCurrent+19]=this.cbx_datazoom
this.Control[iCurrent+20]=this.cbx_toolbox
this.Control[iCurrent+21]=this.st_5
this.Control[iCurrent+22]=this.ddlb_style
this.Control[iCurrent+23]=this.st_4
this.Control[iCurrent+24]=this.ddlb_theme
this.Control[iCurrent+25]=this.em_height
this.Control[iCurrent+26]=this.st_3
this.Control[iCurrent+27]=this.st_2
this.Control[iCurrent+28]=this.sle_title
this.Control[iCurrent+29]=this.st_1
end on

on w_sqlconverter.destroy
call super::destroy
destroy(this.st_22)
destroy(this.st_21)
destroy(this.st_19)
destroy(this.st_18)
destroy(this.st_17)
destroy(this.cb_2)
destroy(this.st_13)
destroy(this.sle_value)
destroy(this.sle_category)
destroy(this.st_12)
destroy(this.st_11)
destroy(this.mle_1)
destroy(this.st_10)
destroy(this.mle_4)
destroy(this.st_9)
destroy(this.em_width)
destroy(this.cb_1)
destroy(this.cbx_rosetype)
destroy(this.cbx_datazoom)
destroy(this.cbx_toolbox)
destroy(this.st_5)
destroy(this.ddlb_style)
destroy(this.st_4)
destroy(this.ddlb_theme)
destroy(this.em_height)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.sle_title)
destroy(this.st_1)
end on

event open;
ieon_resize = create eon_appeon_resize

ieon_resize.of_init(this,true)

ieon_resize.of_fontresize(true,3)
ieon_resize.of_zoom( true, 3)

event ue_setflag()

ddlb_theme.selectitem( 1)
ddlb_style.selectitem( 1)
end event

type wb_1 from w_chart_base`wb_1 within w_sqlconverter
integer x = 1815
integer y = 1084
integer width = 2537
integer height = 1428
end type

type st_22 from statictext within w_sqlconverter
integer x = 155
integer y = 356
integer width = 4709
integer height = 68
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "●    Click the Copy button above the generated PowerScript to copy and then paste it in the application (for example, paste in the Clicked event of a button for loading the graph in a WebBrowser)."
boolean focusrectangle = false
end type

type st_21 from statictext within w_sqlconverter
integer x = 155
integer y = 280
integer width = 3136
integer height = 68
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "●    Click the Convert button to generate the corresponding PowerScript code based on the SQL query and the associated settings."
boolean focusrectangle = false
end type

type st_19 from statictext within w_sqlconverter
integer x = 73
integer y = 204
integer width = 233
integer height = 68
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "You may:"
boolean focusrectangle = false
end type

type st_18 from statictext within w_sqlconverter
integer x = 73
integer y = 132
integer width = 4027
integer height = 68
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "This converter helps convert a SQL query to appropriate PowerScript code which you can paste into the application for quickly creating graph in a WebBrowser control."
boolean focusrectangle = false
end type

type st_17 from statictext within w_sqlconverter
integer x = 73
integer y = 36
integer width = 635
integer height = 68
boolean bringtotop = true
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "SQL to PowerScript Converter"
boolean focusrectangle = false
end type

type cb_2 from commandbutton within w_sqlconverter
integer x = 2382
integer y = 468
integer width = 274
integer height = 88
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "Copy"
end type

event clicked;
String 	ls_Script


ls_Script = mle_4.Text
Clipboard(ls_Script)
end event

type st_13 from statictext within w_sqlconverter
integer x = 73
integer y = 1236
integer width = 155
integer height = 60
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Value:"
boolean focusrectangle = false
end type

type sle_value from singlelineedit within w_sqlconverter
integer x = 402
integer y = 1148
integer width = 800
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "num"
end type

type sle_category from singlelineedit within w_sqlconverter
integer x = 402
integer y = 1008
integer width = 1344
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "name"
end type

type st_12 from statictext within w_sqlconverter
integer x = 73
integer y = 1096
integer width = 261
integer height = 76
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Category:"
boolean focusrectangle = false
end type

type st_11 from statictext within w_sqlconverter
integer x = 1815
integer y = 988
integer width = 1737
integer height = 68
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Example graph loaded in WebBrowser using the generated PowerScript:"
boolean focusrectangle = false
end type

type mle_1 from multilineedit within w_sqlconverter
integer x = 73
integer y = 568
integer width = 1678
integer height = 380
integer taborder = 10
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "SELECT (dept_name) AS name,Count(emp_id) AS num FROM employee, department WHERE employee.dept_id = department.dept_id GROUP BY dept_name"
boolean vscrollbar = true
boolean autovscroll = true
end type

type st_10 from statictext within w_sqlconverter
integer x = 73
integer y = 484
integer width = 535
integer height = 72
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "SQL query statement:"
boolean focusrectangle = false
end type

type mle_4 from multilineedit within w_sqlconverter
integer x = 1815
integer y = 568
integer width = 2537
integer height = 380
integer taborder = 60
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
end type

type st_9 from statictext within w_sqlconverter
integer x = 1815
integer y = 484
integer width = 576
integer height = 68
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Generated PowerScript:"
boolean focusrectangle = false
end type

type em_width from editmask within w_sqlconverter
integer x = 402
integer y = 1420
integer width = 498
integer height = 100
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean enabled = false
string text = "800"
alignment alignment = center!
boolean spin = true
string displaydata = "~t/"
end type

type cb_1 from commandbutton within w_sqlconverter
integer x = 398
integer y = 2240
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "Convert"
end type

event clicked;String		ls_Title, ls_Theme, ls_Style, ls_Option
Long		ll_Width, ll_Height
Boolean	lb_ToolBox, lb_RoseType
String		ls_SQL, ls_Category, ls_Value, ls_Table

//Title
ls_Title = sle_Title.Text
//Width
ll_Width = Long(em_Width.Text)
//Height
ll_Height = Long(em_Height.Text)
//Theme
ls_Theme = Lower(ddlb_Theme.Text)
//Style
ls_Style = ddlb_Style.Text
//ToolBox
lb_ToolBox = cbx_ToolBox.Checked
//roseType (Only for pie)
lb_RoseType = cbx_roseType.Checked

ls_SQL = mle_1.text
ls_Category = sle_category.text
ls_Value = sle_value.text

//Title
wb_1.of_SetTitle(ls_Title)
//Theme
wb_1.of_SetTheme(ls_Theme)
//Style
wb_1.of_SetStyle(lower(ls_Style))
//Width
//wb_1.of_SetWidth(ll_Width )
//Height
//wb_1.of_SetHeight(ll_Height)
//ToolBox
wb_1.of_SetToolBox(lb_Toolbox)
//RoseType
IF lb_RoseType THEN
	wb_1.of_SetRoseType("radius")
ELSE
	wb_1.of_SetRoseType("")
END IF
//CreateOption
ls_Option = wb_1.of_CreateOption(ls_SQL, ls_Category, ls_Value)
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
wb_1.of_Apply()


mle_4.Text = "String ls_Title, ls_Theme, ls_Style, ls_Option~r~n" +&
		"Long		ll_Width, ll_Height~r~n" +&
		"Boolean	lb_ToolBox, lb_RoseType~r~n" +&
		"String		ls_SQL, ls_Category, ls_Value, ls_Table~r~n" +&
		"~r~n" +&
		"//Title~r~n" +&
		"ls_Title = sle_Title.Text~r~n" +&
		"//Width~r~n" +&
		"ll_Width = Long(em_Width.Text)~r~n" +&
		"//Height~r~n" +&
		"ll_Height = Long(em_Height.Text)~r~n" +&
		"//Theme~r~n" +&
		"ls_Theme = ddlb_Theme.Text~r~n" +&
		"//Style~r~n" +&
		"ls_Style = ddlb_Style.Text~r~n" +&
		"//ToolBox~r~n" +&
		"lb_ToolBox = cbx_ToolBox.Checked~r~n" +&
		"//roseType (Only for pie)~r~n" +&
		"lb_RoseType = cbx_roseType.Checked~r~n" +&
		"~r~n" +&
		"ls_SQL = mle_1.text~r~n" +&
		"ls_Category = sle_category.text~r~n" +&
		"ls_Value = sle_value.text~r~n" +&
		"~r~n" +&
		"//Title~r~n" +&
		"wb_1.of_SetTitle(ls_Title)~r~n" +&
		"//Theme~r~n" +&
		"wb_1.of_SetTheme(ls_Theme)~r~n" +&
		"//Style~r~n" +&
		"wb_1.of_SetStyle(lower(ls_Style))~r~n" +&
		"//Width~r~n" +&
		"wb_1.of_SetWidth(ll_Width )~r~n" +&
		"//Height~r~n" +&
		"wb_1.of_SetHeight(ll_Height)~r~n" +&
		"//ToolBox~r~n" +&
		"wb_1.of_SetToolBox(lb_Toolbox)~r~n" +&
		"//RoseType~r~n" +&
		"IF lb_RoseType THEN~r~n" +&
		"	wb_1.of_SetRoseType(~"radius~")~r~n" +&
		"ELSE~r~n" +&
		"	wb_1.of_SetRoseType(~"~")~r~n" +&
		"END IF~r~n" +&
		"//CreateOption~r~n" +&
		"ls_Option = wb_1.of_CreateOption(ls_SQL, ls_Category, ls_Value)~r~n" +&
		"//SetOption~r~n" +&
		"wb_1.of_SetOption(ls_Option)~r~n" +&
		"//Apply~r~n" +&
		"wb_1.of_Apply_Async()~r~n"
end event

type cbx_rosetype from checkbox within w_sqlconverter
integer x = 398
integer y = 2100
integer width = 663
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "Rose Type: Radius"
end type

type cbx_datazoom from checkbox within w_sqlconverter
boolean visible = false
integer x = 398
integer y = 2092
integer width = 507
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "DataZoom"
end type

type cbx_toolbox from checkbox within w_sqlconverter
integer x = 398
integer y = 1980
integer width = 311
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "ToolBox"
end type

type st_5 from statictext within w_sqlconverter
integer x = 73
integer y = 1916
integer width = 137
integer height = 68
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Style:"
boolean focusrectangle = false
end type

type ddlb_style from dropdownlistbox within w_sqlconverter
integer x = 402
integer y = 1828
integer width = 800
integer height = 692
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean allowedit = true
boolean sorted = false
string item[] = {"line","bar","area","pie","scatter","funnel"}
end type

event selectionchanged;If ddlb_style.text(index) = 'pie' Then
	cbx_RoseType.Enabled = True
	cbx_dataZoom.Enabled = False
Else
	cbx_RoseType.Enabled = False
	cbx_dataZoom.Enabled = True
End If

If ddlb_style.text(index) = 'scatter' OR  ddlb_style.text(index) = 'funnel'  Then
	cbx_dataZoom.Enabled = False
Else
	cbx_dataZoom.Enabled = True
End If


end event

type st_4 from statictext within w_sqlconverter
integer x = 73
integer y = 1780
integer width = 183
integer height = 72
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Theme:"
boolean focusrectangle = false
end type

type ddlb_theme from dropdownlistbox within w_sqlconverter
integer x = 402
integer y = 1692
integer width = 800
integer height = 376
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean allowedit = true
boolean sorted = false
boolean hscrollbar = true
string item[] = {"Default","Light","Dark"}
end type

type em_height from editmask within w_sqlconverter
integer x = 402
integer y = 1556
integer width = 498
integer height = 100
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean enabled = false
string text = "550"
alignment alignment = center!
boolean spin = true
string displaydata = "~t/"
end type

type st_3 from statictext within w_sqlconverter
integer x = 73
integer y = 1640
integer width = 197
integer height = 72
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Height:"
boolean focusrectangle = false
end type

type st_2 from statictext within w_sqlconverter
integer x = 73
integer y = 1512
integer width = 169
integer height = 68
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Width:"
boolean focusrectangle = false
end type

type sle_title from singlelineedit within w_sqlconverter
integer x = 402
integer y = 1284
integer width = 1344
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "Default Title"
end type

type st_1 from statictext within w_sqlconverter
integer x = 73
integer y = 1372
integer width = 133
integer height = 64
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Title:"
boolean focusrectangle = false
end type

