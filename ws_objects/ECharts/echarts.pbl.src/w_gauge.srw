$PBExportHeader$w_gauge.srw
forward
global type w_gauge from w_chart_base
end type
type st_1 from statictext within w_gauge
end type
type st_2 from statictext within w_gauge
end type
type dw_1 from datawindow within w_gauge
end type
end forward

global type w_gauge from w_chart_base
string tag = "gauge"
integer width = 4649
integer height = 2124
st_1 st_1
st_2 st_2
dw_1 dw_1
end type
global w_gauge w_gauge

type variables
Boolean ib_flag = TRUE
end variables

forward prototypes
public function string wf_createoption ()
public subroutine wf_apply ()
end prototypes

public function string wf_createoption ();Long ll_RowCount, ll_RootObject, ll_ChildObject, ll_ChildObject2, ll_ChildObject3, ll_ChildObject4, ll_ChildArray, ll_ChildArray2, ll_ChildArray3
String ls_Option
JsonGenerator ljson_Option

ljson_Option = Create JsonGenerator
ll_RootObject = ljson_Option.CreateJsonObject()

//Title
ll_ChildObject = ljson_Option.AddItemObject(ll_RootObject, "title")
ljson_Option.AddItemString(ll_ChildObject, "text", "'" + wb_1.of_Gettitle() + "'")
ljson_Option.AddItemString(ll_ChildObject, "left", "'center'")


//ToolBox
If wb_1.of_GetToolBox() Then
	ll_ChildObject2 = ljson_Option.AddItemObject(ll_RootObject, "toolbox")
	ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "feature")
	ljson_Option.AddItemObject(ll_ChildObject3, "saveAsImage")
	ljson_Option.AddItemObject(ll_ChildObject3, "dataView")
End If

//series
ll_ChildArray = ljson_Option.AddItemArray(ll_RootObject, "series")

ll_ChildObject2 = ljson_Option.AddItemObject(ll_ChildArray)
ljson_Option.AddItemString(ll_ChildObject2, "type","'"+wb_1.of_GetStyle()+"'")
ljson_Option.AddItemNumber(ll_ChildObject2, "startAngle", 90)
ljson_Option.AddItemNumber(ll_ChildObject2, "endAngle", -270)

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "pointer")
ljson_Option.AddItemBoolean(ll_ChildObject3, "show", false)

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "progress")
ljson_Option.AddItemBoolean(ll_ChildObject3, "show", true)
ljson_Option.AddItemBoolean(ll_ChildObject3, "overlap", false)
ljson_Option.AddItemBoolean(ll_ChildObject3, "roundCap", true)
ljson_Option.AddItemBoolean(ll_ChildObject3, "clip", false)

ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "itemStyle")
ljson_Option.AddItemNumber(ll_ChildObject4, "borderWidth", 1)
ljson_Option.AddItemString(ll_ChildObject4, "borderColor", "'#464646'")

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "axisLine")
ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "lineStyle")
ljson_Option.AddItemNumber(ll_ChildObject4, "width",  40)

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "splitLine")
ljson_Option.AddItemBoolean(ll_ChildObject3, "show", false)
ljson_Option.AddItemNumber(ll_ChildObject3, "distance", 0)
ljson_Option.AddItemNumber(ll_ChildObject3, "length", 10)

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "axisTick")
ljson_Option.AddItemBoolean(ll_ChildObject3, "show", false)

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "axisLabel")
ljson_Option.AddItemBoolean(ll_ChildObject3, "show", false)
ljson_Option.AddItemNumber(ll_ChildObject3, "distance", 50)


ll_ChildArray2 = ljson_Option.AddItemArray(ll_ChildObject2, "data")

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildArray2)
ljson_Option.AddItemNumber(ll_ChildObject3, "value", dw_1.GetItemNumber(1, 2))
ljson_Option.AddItemString(ll_ChildObject3, "name", "'" + wf_GetItemString(dw_1, 1, 1) +"'")
ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "title")

ll_ChildArray3 = ljson_Option.AddItemArray(ll_ChildObject4, "offsetCenter")
ljson_Option.AddItemString(ll_ChildArray3, "'0%'")
ljson_Option.AddItemString(ll_ChildArray3, "'-30%'")


ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "detail")

ll_ChildArray3 = ljson_Option.AddItemArray(ll_ChildObject4, "offsetCenter")
ljson_Option.AddItemString(ll_ChildArray3, "'0%'")
ljson_Option.AddItemString(ll_ChildArray3, "'-20%'")


ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildArray2)
ljson_Option.AddItemNumber(ll_ChildObject3, "value", dw_1.GetItemNumber(2, 2))
ljson_Option.AddItemString(ll_ChildObject3, "name", "'" + wf_GetItemString(dw_1, 2, 1) + "'")
ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "title")

ll_ChildArray3 = ljson_Option.AddItemArray(ll_ChildObject4, "offsetCenter")
ljson_Option.AddItemString(ll_ChildArray3, "'0%'")
ljson_Option.AddItemString(ll_ChildArray3, "'0%'")


ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "detail")

ll_ChildArray3 = ljson_Option.AddItemArray(ll_ChildObject4, "offsetCenter")
ljson_Option.AddItemString(ll_ChildArray3, "'0%'")
ljson_Option.AddItemString(ll_ChildArray3, "'10%'")



ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildArray2)
ljson_Option.AddItemNumber(ll_ChildObject3, "value", dw_1.GetItemNumber(3, 2))
ljson_Option.AddItemString(ll_ChildObject3, "name", "'"+wf_GetItemString(dw_1, 3, 1) +"'")
ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "title")

ll_ChildArray3 = ljson_Option.AddItemArray(ll_ChildObject4, "offsetCenter")
ljson_Option.AddItemString(ll_ChildArray3, "'0%'")
ljson_Option.AddItemString(ll_ChildArray3, "'30%'")


ll_ChildObject4 = ljson_Option.AddItemObject(ll_ChildObject3, "detail")

ll_ChildArray3 = ljson_Option.AddItemArray(ll_ChildObject4, "offsetCenter")
ljson_Option.AddItemString(ll_ChildArray3, "'0%'")
ljson_Option.AddItemString(ll_ChildArray3, "'40%'")


ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "title")
ljson_Option.AddItemNumber(ll_ChildObject3, "fontSize", 14)

ll_ChildObject3 = ljson_Option.AddItemObject(ll_ChildObject2, "detail")
ljson_Option.AddItemNumber(ll_ChildObject3, "width", 50)
ljson_Option.AddItemNumber(ll_ChildObject3, "height", 14)
ljson_Option.AddItemNumber(ll_ChildObject3, "fontSize", 14)
ljson_Option.AddItemString(ll_ChildObject3, "color", "'auto'")
ljson_Option.AddItemString(ll_ChildObject3, "borderColor", "'auto'")
ljson_Option.AddItemNumber(ll_ChildObject3, "borderRadius", 20)
ljson_Option.AddItemNumber(ll_ChildObject3, "borderWidth", 1)
ljson_Option.AddItemString(ll_ChildObject3, "formatter", "'{value}%'")


ls_Option = ljson_Option.GetJsonString()

If IsValid ( ljson_Option ) Then DesTroy ( ljson_Option )

Return ls_Option
end function

public subroutine wf_apply ();String ls_Option

//Title
wb_1.of_SetTitle("The completion rate")
//Theme
wb_1.of_SetTheme(gs_EChartsTheme)
//Style
wb_1.of_SetStyle("gauge")
//Width
//wb_1.of_SetWidth(800)
//Height
//wb_1.of_SetHeight(500)
//ToolBox
wb_1.of_SetToolBox(True)
//CreateOption
ls_Option = wf_CreateOption()
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
wb_1.of_Apply()

end subroutine

on w_gauge.create
int iCurrent
call super::create
this.st_1=create st_1
this.st_2=create st_2
this.dw_1=create dw_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
this.Control[iCurrent+2]=this.st_2
this.Control[iCurrent+3]=this.dw_1
end on

on w_gauge.destroy
call super::destroy
destroy(this.st_1)
destroy(this.st_2)
destroy(this.dw_1)
end on

type wb_1 from w_chart_base`wb_1 within w_gauge
integer x = 1605
integer y = 116
integer width = 3008
integer height = 1860
end type

event wb_1::navigationprogressindex;call super::navigationprogressindex;IF progressindex = 100 THEN
	IF ib_flag THEN
		ib_flag = FALSE
		wf_apply()
	END IF 
END IF
end event

type st_1 from statictext within w_gauge
integer x = 503
integer y = 24
integer width = 581
integer height = 76
boolean bringtotop = true
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Grid DataWindow"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within w_gauge
integer x = 2839
integer y = 24
integer width = 535
integer height = 76
boolean bringtotop = true
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "WebBrowser"
alignment alignment = center!
boolean focusrectangle = false
end type

type dw_1 from datawindow within w_gauge
integer x = 41
integer y = 116
integer width = 1522
integer height = 1860
integer taborder = 10
string title = "none"
string dataobject = "d_gauge"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;
dw_1.AcceptText()

wf_apply()
end event

