﻿$PBExportHeader$w_area.srw
forward
global type w_area from w_chart_base
end type
type dw_2 from datawindow within w_area
end type
type dw_series from datawindow within w_area
end type
type dw_1 from datawindow within w_area
end type
type st_1 from statictext within w_area
end type
type ddlb_1 from dropdownlistbox within w_area
end type
type st_2 from statictext within w_area
end type
type st_4 from statictext within w_area
end type
type st_5 from statictext within w_area
end type
end forward

global type w_area from w_chart_base
string tag = "area"
integer width = 4658
integer height = 2052
dw_2 dw_2
dw_series dw_series
dw_1 dw_1
st_1 st_1
ddlb_1 ddlb_1
st_2 st_2
st_4 st_4
st_5 st_5
end type
global w_area w_area

type variables
Boolean ib_flag = True
end variables

forward prototypes
public subroutine wf_apply ()
end prototypes

public subroutine wf_apply ();/*wb_1 use string json: ls_Option to generate charts*/
String ls_Title, ls_Option, ls_data

//Title
ls_Title = dw_1.Describe("gr_1.title")
wb_1.of_SetTitle(ls_Title)
//Style
wb_1.of_SetStyle("area")
//Width
wb_1.of_SetWidth(750)
//Height
wb_1.of_SetHeight(400)
//CreateData
ls_data = wb_1.of_createdata_graph(dw_1)
wb_1.of_SetData(ls_data)
//CreateOption
ls_Option = wb_1.of_createoption()
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
wb_1.of_Apply()
end subroutine

on w_area.create
int iCurrent
call super::create
this.dw_2=create dw_2
this.dw_series=create dw_series
this.dw_1=create dw_1
this.st_1=create st_1
this.ddlb_1=create ddlb_1
this.st_2=create st_2
this.st_4=create st_4
this.st_5=create st_5
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.dw_2
this.Control[iCurrent+2]=this.dw_series
this.Control[iCurrent+3]=this.dw_1
this.Control[iCurrent+4]=this.st_1
this.Control[iCurrent+5]=this.ddlb_1
this.Control[iCurrent+6]=this.st_2
this.Control[iCurrent+7]=this.st_4
this.Control[iCurrent+8]=this.st_5
end on

on w_area.destroy
call super::destroy
destroy(this.dw_2)
destroy(this.dw_series)
destroy(this.dw_1)
destroy(this.st_1)
destroy(this.ddlb_1)
destroy(this.st_2)
destroy(this.st_4)
destroy(this.st_5)
end on

event open;call super::open;/*Initialize dw_1、dw_2*/
String ls_SeriesName, ls_SeriesName2, ls_Category
Long ll_SeriesCount, ll_DataCount, ll_Row, ll_Row2, ll_i, ll_j
Double ldb_Value

dw_1.y = wb_1.y
dw_2.height = wb_1.height/2
dw_1.SetTransObject(SQLCA)
dw_1.Retrieve()

ib_flag = true

ll_SeriesCount = dw_1.Seriescount( "gr_1")

FOR ll_i = 1 TO ll_SeriesCount
	ls_SeriesName = dw_1.SeriesName("gr_1", ll_i)
	ls_SeriesName2 = ls_SeriesName
	IF ls_SeriesName2="" OR IsNull(ls_SeriesName2) THEN
		ls_SeriesName2 = "Series" + String(ll_i)
	END IF
	ddlb_1.AddItem(ls_SeriesName2)
	ll_Row = dw_series.InsertRow(0)
	dw_series.SetItem( ll_Row, 1, ls_SeriesName2)
	
	ll_DataCount = dw_1.Datacount( "gr_1", ls_SeriesName)
	FOR ll_j = 1 TO ll_DataCount
		ls_Category = dw_1.CategoryName( "gr_1", ll_j)
		ldb_Value = dw_1.GetData( "gr_1", ll_i, ll_j )
		ll_Row2 = dw_2.InsertRow(0)
		dw_2.SetItem(ll_Row2, "series", ls_SeriesName2)
		dw_2.SetItem(ll_Row2, "name", ls_Category)
		dw_2.SetItem(ll_Row2, "values", ldb_Value)
	NEXT
NEXT

ddlb_1.post SelectItem( ddlb_1.totalitems( ) )
ddlb_1.post Event selectionchanged( ddlb_1.totalitems( ) )

//1.waiting webbrowser init
//2.Navigation DefaultUrl
//3.event wb_1.Navigationprogressindex

end event

type wb_1 from w_chart_base`wb_1 within w_area
integer x = 1669
integer y = 244
integer width = 2903
integer height = 1632
end type

event wb_1::navigationprogressindex;call super::navigationprogressindex;/*dynamic load charts.html and generate charts*/
IF progressindex  = 100 THEN
	IF ib_flag THEN
		ib_flag = false
		wf_apply()
	END IF
END IF
end event

event wb_1::ue_clicked;call super::ue_clicked;
JsonParser lnv_JsonParser
Long 		ll_RootObject, ll_Find, ll_I
String 	ls_Name

lnv_JsonParser = Create JsonParser

lnv_JsonParser.LoadString(as_arg)
ll_RootObject = lnv_JsonParser.GetRootItem()
ls_Name = lnv_JsonParser.GetItemString( ll_RootObject, "name" )

ll_Find = dw_2.Find( "name = '" + ls_Name + "'", 1, dw_2.RowCount()  )
If ll_Find > 0 Then
	dw_2.SetRedraw(False)
	dw_2.ScrollToRow(dw_1.RowCount())
	dw_2.ScrollToRow(ll_Find)
	dw_2.selectrow( 0, False )
	dw_2.selectrow( ll_Find, True )
	dw_2.SetRedraw(True)
End If

If IsValid ( lnv_JsonParser ) Then Destroy ( lnv_JsonParser )
end event

type dw_2 from datawindow within w_area
integer x = 41
integer y = 1204
integer width = 1582
integer height = 672
integer taborder = 20
boolean bringtotop = true
string title = "none"
string dataobject = "d_category2"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;/*When after modifing the columns by yourself then generate a new chart again*/

dw_2.accepttext( )

wf_apply()
end event

type dw_series from datawindow within w_area
boolean visible = false
integer x = 3154
integer y = 868
integer width = 375
integer height = 536
integer taborder = 30
boolean bringtotop = true
boolean enabled = false
string title = "none"
string dataobject = "d_series"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_area
integer x = 41
integer y = 248
integer width = 1582
integer height = 720
integer taborder = 10
boolean bringtotop = true
string title = "none"
string dataobject = "d_area"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_area
integer x = 46
integer y = 1048
integer width = 325
integer height = 64
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Series Name:"
boolean focusrectangle = false
end type

type ddlb_1 from dropdownlistbox within w_area
integer x = 370
integer y = 1040
integer width = 901
integer height = 324
integer taborder = 40
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;String ls_SeriesName

ls_SeriesName = ddlb_1.Text(index)

dw_2.SetReDraw(FALSE)
dw_2.SetFilter( "#1 = '" + ls_SeriesName + "'" )
dw_2.Filter()
dw_2.SetReDraw(TRUE)

end event

type st_2 from statictext within w_area
integer x = 50
integer y = 32
integer width = 4818
integer height = 88
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "The tool can read your chart imported from DataWindow without providing raw data. In the generated data table, you can edit the data contents, and create new corresponding chart by pressing Enter."
boolean focusrectangle = false
end type

type st_4 from statictext within w_area
integer x = 562
integer y = 128
integer width = 603
integer height = 64
boolean bringtotop = true
integer textsize = -11
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Graph DataWindow"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_5 from statictext within w_area
integer x = 2912
integer y = 128
integer width = 480
integer height = 64
boolean bringtotop = true
integer textsize = -11
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

