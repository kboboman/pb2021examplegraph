$PBExportHeader$w_sqlconverter.srw
forward
global type w_sqlconverter from w_chart_base
end type
type st_8 from statictext within w_sqlconverter
end type
type st_4 from statictext within w_sqlconverter
end type
type cb_2 from commandbutton within w_sqlconverter
end type
type st_14 from statictext within w_sqlconverter
end type
type st_7 from statictext within w_sqlconverter
end type
type st_6 from statictext within w_sqlconverter
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
type cbx_is3d from checkbox within w_sqlconverter
end type
type st_5 from statictext within w_sqlconverter
end type
type ddlb_style from dropdownlistbox within w_sqlconverter
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
integer width = 4411
integer height = 2720
string icon = "png\chartapp.ico"
st_8 st_8
st_4 st_4
cb_2 cb_2
st_14 st_14
st_7 st_7
st_6 st_6
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
cbx_is3d cbx_is3d
st_5 st_5
ddlb_style ddlb_style
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
this.st_8=create st_8
this.st_4=create st_4
this.cb_2=create cb_2
this.st_14=create st_14
this.st_7=create st_7
this.st_6=create st_6
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
this.cbx_is3d=create cbx_is3d
this.st_5=create st_5
this.ddlb_style=create ddlb_style
this.em_height=create em_height
this.st_3=create st_3
this.st_2=create st_2
this.sle_title=create sle_title
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_8
this.Control[iCurrent+2]=this.st_4
this.Control[iCurrent+3]=this.cb_2
this.Control[iCurrent+4]=this.st_14
this.Control[iCurrent+5]=this.st_7
this.Control[iCurrent+6]=this.st_6
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
this.Control[iCurrent+18]=this.cbx_is3d
this.Control[iCurrent+19]=this.st_5
this.Control[iCurrent+20]=this.ddlb_style
this.Control[iCurrent+21]=this.em_height
this.Control[iCurrent+22]=this.st_3
this.Control[iCurrent+23]=this.st_2
this.Control[iCurrent+24]=this.sle_title
this.Control[iCurrent+25]=this.st_1
end on

on w_sqlconverter.destroy
call super::destroy
destroy(this.st_8)
destroy(this.st_4)
destroy(this.cb_2)
destroy(this.st_14)
destroy(this.st_7)
destroy(this.st_6)
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
destroy(this.cbx_is3d)
destroy(this.st_5)
destroy(this.ddlb_style)
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

ddlb_style.selectitem( 1)
end event

type wb_1 from w_chart_base`wb_1 within w_sqlconverter
integer x = 1792
integer y = 1124
integer width = 2537
integer height = 1384
end type

type st_8 from statictext within w_sqlconverter
integer x = 160
integer y = 372
integer width = 4667
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "● Click the Copy button above the generated PowerScript to copy and then paste it in the application (for example, paste in the Clicked event of a button for loading the graph in a WebBrowser)."
boolean focusrectangle = false
end type

type st_4 from statictext within w_sqlconverter
integer x = 78
integer y = 216
integer width = 233
integer height = 68
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

type cb_2 from commandbutton within w_sqlconverter
integer x = 2354
integer y = 492
integer width = 274
integer height = 88
integer taborder = 60
integer textsize = -9
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

type st_14 from statictext within w_sqlconverter
integer x = 160
integer y = 296
integer width = 3095
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "● Click the Convert button to generate the corresponding PowerScript code based on the SQL query and the associated settings."
boolean focusrectangle = false
end type

type st_7 from statictext within w_sqlconverter
integer x = 78
integer y = 148
integer width = 4041
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "This converter helps convert a SQL query to appropriate PowerScript code which you can paste into the application for quickly  creating graph in a WebBrowser control."
boolean focusrectangle = false
end type

type st_6 from statictext within w_sqlconverter
integer x = 78
integer y = 40
integer width = 654
integer height = 72
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

event ue_clicked;//

end event

type st_13 from statictext within w_sqlconverter
integer x = 78
integer y = 1260
integer width = 155
integer height = 64
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
integer y = 1248
integer width = 800
integer height = 100
integer taborder = 20
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "num"
end type

type sle_category from singlelineedit within w_sqlconverter
integer x = 402
integer y = 1096
integer width = 1344
integer height = 100
integer taborder = 20
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "name"
end type

type st_12 from statictext within w_sqlconverter
integer x = 78
integer y = 1104
integer width = 242
integer height = 68
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
integer x = 1792
integer y = 1036
integer width = 1737
integer height = 64
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
integer x = 78
integer y = 600
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
integer x = 78
integer y = 508
integer width = 521
integer height = 68
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
integer x = 1792
integer y = 600
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
integer x = 1792
integer y = 508
integer width = 576
integer height = 72
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
integer y = 1544
integer width = 498
integer height = 100
integer taborder = 30
integer textsize = -9
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
integer y = 2180
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "Convert"
end type

event clicked;String		ls_Title, ls_Style, ls_Data, ls_Option
Long		ll_Width, ll_Height
Boolean	lb_Is3D
String		ls_SQL, ls_Category, ls_Value

//Title
ls_Title = sle_Title.Text
//Width
ll_Width = Long(em_Width.Text)
//Height
ll_Height = Long(em_Height.Text)
//Style
ls_Style = ddlb_Style.Text
//Is3D (Only for pie)
lb_Is3D = cbx_Is3D.Checked

ls_SQL = mle_1.text
ls_Category = sle_category.text
ls_Value = sle_value.text

//Title
wb_1.of_SetTitle(ls_Title)
//Style
wb_1.of_SetStyle(lower(ls_Style))
//Width
wb_1.of_SetWidth(ll_Width )
//Height
wb_1.of_SetHeight(ll_Height)
//Is3D
If ls_Style = "pie"Then
	wb_1.of_SetIs3D(lb_Is3D)
Else
	wb_1.of_SetIs3D(False)
End If
//CreateData
ls_data = wb_1.of_CreateData(ls_SQL, ls_Category, ls_Value)
wb_1.of_SetData(ls_data)
//CreateOption
ls_Option = wb_1.of_CreateOption()
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
wb_1.of_Apply()


mle_4.Text = "String ls_Title, ls_Style, ls_Data, ls_Option~r~n" +&
		"Long		ll_Width, ll_Height~r~n" +&
		"Boolean	lb_Is3D~r~n" +&
		"String		ls_SQL, ls_Category, ls_Value~r~n" +&
		"~r~n" +&
		"//Title~r~n" +&
		"ls_Title = sle_Title.Text~r~n" +&
		"//Width~r~n" +&
		"ll_Width = Long(em_Width.Text)~r~n" +&
		"//Height~r~n" +&
		"ll_Height = Long(em_Height.Text)~r~n" +&
		"//Style~r~n" +&
		"ls_Style = ddlb_Style.Text~r~n" +&
		"//Is3D (Only for pie)~r~n" +&
		"lb_Is3D = cbx_Is3D.Checked~r~n" +&
		"~r~n" +&
		"ls_SQL = mle_1.text~r~n" +&
		"ls_Category = sle_category.text~r~n" +&
		"ls_Value = sle_value.text~r~n" +&
		"~r~n" +&
		"//Title~r~n" +&
		"wb_1.of_SetTitle(ls_Title)~r~n" +&
		"//Style~r~n" +&
		"wb_1.of_SetStyle(lower(ls_Style))~r~n" +&
		"//Width~r~n" +&
		"wb_1.of_SetWidth(ll_Width )~r~n" +&
		"//Height~r~n" +&
		"wb_1.of_SetHeight(ll_Height)~r~n" +&
		"//Is3D~r~n" +&
		"If ls_Style = ~"pie~" Then~r~n" +&
		"	wb_1.of_SetIs3D(lb_Is3D)~r~n" +&
		"Else~r~n" +&
		"	wb_1.of_SetIs3D(False)~r~n" +&
		"End If~r~n" +&
		"//CreateData~r~n" +&
		"ls_data = wb_1.of_CreateData(ls_SQL, ls_Category, ls_Value)~r~n" +&
		"wb_1.of_SetData(ls_data)~r~n" +&
		"//CreateOption~r~n" +&
		"ls_Option = wb_1.of_CreateOption()~r~n" +&
		"//SetOption~r~n" +&
		"wb_1.of_SetOption(ls_Option)~r~n" +&
		"//Apply~r~n" +&
		"wb_1.of_Apply()~r~n"
end event

type cbx_is3d from checkbox within w_sqlconverter
integer x = 398
integer y = 2016
integer width = 311
integer height = 76
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "is3D"
end type

type st_5 from statictext within w_sqlconverter
integer x = 78
integer y = 1848
integer width = 137
integer height = 72
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
integer y = 1832
integer width = 800
integer height = 692
integer taborder = 50
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean allowedit = true
boolean sorted = false
string item[] = {"line","bar","area","pie","scatter","column","donut"}
end type

event selectionchanged;If ddlb_style.text(index) = 'pie' Then
	cbx_is3d.Enabled = True
Else
	cbx_is3d.Enabled = False
End If



end event

type em_height from editmask within w_sqlconverter
integer x = 402
integer y = 1680
integer width = 498
integer height = 100
integer taborder = 30
integer textsize = -9
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
integer x = 78
integer y = 1700
integer width = 197
integer height = 68
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
integer x = 78
integer y = 1560
integer width = 169
integer height = 64
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
integer y = 1392
integer width = 1344
integer height = 100
integer taborder = 20
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "Default Title"
end type

type st_1 from statictext within w_sqlconverter
integer x = 78
integer y = 1412
integer width = 133
integer height = 68
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

