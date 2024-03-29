﻿$PBExportHeader$w_line.srw
forward
global type w_line from w_chart_base
end type
type dw_1 from datawindow within w_line
end type
type dw_2 from datawindow within w_line
end type
type dw_series from datawindow within w_line
end type
type st_6 from statictext within w_line
end type
type ddlb_1 from dropdownlistbox within w_line
end type
type mle_1 from multilineedit within w_line
end type
type st_8 from statictext within w_line
end type
type st_1 from statictext within w_line
end type
type st_3 from statictext within w_line
end type
type st_7 from statictext within w_line
end type
type st_9 from statictext within w_line
end type
end forward

global type w_line from w_chart_base
string tag = "line"
integer width = 4649
integer height = 2152
dw_1 dw_1
dw_2 dw_2
dw_series dw_series
st_6 st_6
ddlb_1 ddlb_1
mle_1 mle_1
st_8 st_8
st_1 st_1
st_3 st_3
st_7 st_7
st_9 st_9
end type
global w_line w_line

type variables
Boolean 	ib_init = True
Boolean  ib_flag = True

Boolean ib_resize = false

end variables

forward prototypes
public subroutine wf_apply ()
end prototypes

public subroutine wf_apply ();String ls_Title, ls_Data, ls_Option

//Title
ls_Title = dw_1.Describe("gr_1.title")
wb_1.of_SetTitle(ls_Title)
//Style
wb_1.of_SetStyle("line")
//CreateData
ls_Data = wb_1.of_CreateData( dw_series, dw_2 )
//SetData
wb_1.of_SetData(ls_Data)
//CreateOption
ls_Option = "{title:'" + ls_Title +  "', legend:{position:'bottom'},colors:['red','#004411','rgb(128,128,128)']}"
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
wb_1.of_Apply_Async()


end subroutine

on w_line.create
int iCurrent
call super::create
this.dw_1=create dw_1
this.dw_2=create dw_2
this.dw_series=create dw_series
this.st_6=create st_6
this.ddlb_1=create ddlb_1
this.mle_1=create mle_1
this.st_8=create st_8
this.st_1=create st_1
this.st_3=create st_3
this.st_7=create st_7
this.st_9=create st_9
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.dw_1
this.Control[iCurrent+2]=this.dw_2
this.Control[iCurrent+3]=this.dw_series
this.Control[iCurrent+4]=this.st_6
this.Control[iCurrent+5]=this.ddlb_1
this.Control[iCurrent+6]=this.mle_1
this.Control[iCurrent+7]=this.st_8
this.Control[iCurrent+8]=this.st_1
this.Control[iCurrent+9]=this.st_3
this.Control[iCurrent+10]=this.st_7
this.Control[iCurrent+11]=this.st_9
end on

on w_line.destroy
call super::destroy
destroy(this.dw_1)
destroy(this.dw_2)
destroy(this.dw_series)
destroy(this.st_6)
destroy(this.ddlb_1)
destroy(this.mle_1)
destroy(this.st_8)
destroy(this.st_1)
destroy(this.st_3)
destroy(this.st_7)
destroy(this.st_9)
end on

event open;call super::open;Long ll_DataCount, ll_SeriesCount, ll_Row, ll_Row2, ll_i, ll_j
String ls_SeriesName, ls_SeriesName2, ls_Category
Double ldb_Value

dw_1.y = wb_1.y
dw_2.height = wb_1.height/2

dw_1.SetTransObject (SQLCA)
dw_1.Retrieve()

ib_init = True
ib_flag = TRUE

dw_Series.ReSet()
dw_2.ReSet()



ll_SeriesCount = dw_1.SeriesCount( "gr_1")

FOR ll_i = 1 TO ll_SeriesCount
	//Series
	ls_SeriesName = dw_1.SeriesName( "gr_1", ll_i)
	ls_SeriesName2 = ls_SeriesName
	IF IsNull(ls_SeriesName2) OR Trim(ls_SeriesName2) = "" Then
		ls_SeriesName2 = "Series" + String (ll_i)
	END IF
	ddlb_1.AddItem(ls_SeriesName2)
	
	ll_Row = dw_series.InsertRow(0)
	dw_series.SetItem(ll_Row, 1, ls_SeriesName2 )
	
	ll_DataCount = dw_1.DataCount( "gr_1",ls_SeriesName)
	FOR ll_j = 1 TO ll_DataCount
		//Category
		ls_Category = dw_1.CategoryName( "gr_1", ll_j)
		//Data
		ldb_Value = dw_1.GetData( "gr_1", ll_i, ll_j)
		
		ll_Row2 = dw_2.InsertRow(0)		
		dw_2.SetItem(ll_Row2, "series", ls_SeriesName2 )
		dw_2.SetItem(ll_Row2, "name", ls_Category )
		dw_2.SetItem(ll_Row2, "values", ldb_Value )
	NEXT
NEXT

ib_init = false
ddlb_1.post SelectItem( ddlb_1.totalitems( ) )
ddlb_1.post Event selectionchanged( ddlb_1.totalitems( ) )

//1.waiting webbrowser init
//2.Navigation DefaultUrl
//3.event wb_1.Navigationprogressindex

//git 테스트

end event

type wb_1 from w_chart_base`wb_1 within w_line
integer x = 1669
integer y = 316
integer width = 2862
integer height = 1276
end type

event wb_1::navigationprogressindex;call super::navigationprogressindex;IF Progressindex = 100 THEN
	IF ib_flag THEN
		ib_flag = False
		wf_apply()
//		This.Event Resize(0, wb_1.width, wb_1.height)
	END IF
END IF
end event

event wb_1::ue_clicked;//
mle_1.Text += as_arg + "~r~n"
mle_1.scroll( mle_1.linecount( ) )


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

type dw_1 from datawindow within w_line
integer x = 41
integer y = 320
integer width = 1582
integer height = 732
integer taborder = 10
boolean bringtotop = true
string title = "none"
string dataobject = "d_dept_headcount_line"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_2 from datawindow within w_line
integer x = 41
integer y = 1352
integer width = 1586
integer height = 620
integer taborder = 20
boolean bringtotop = true
string title = "none"
string dataobject = "d_category2"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;dw_2.AcceptText()

wf_apply()

end event

type dw_series from datawindow within w_line
boolean visible = false
integer x = 1394
integer y = 1340
integer width = 302
integer height = 492
integer taborder = 20
boolean bringtotop = true
boolean enabled = false
string title = "none"
string dataobject = "d_dw_series"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type st_6 from statictext within w_line
integer x = 37
integer y = 1172
integer width = 334
integer height = 72
boolean bringtotop = true
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Series Name:"
alignment alignment = center!
boolean focusrectangle = false
end type

type ddlb_1 from dropdownlistbox within w_line
integer x = 389
integer y = 1160
integer width = 901
integer height = 352
integer taborder = 30
boolean bringtotop = true
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;String ls_SeriesName

IF ib_init THEN RETURN

ls_SeriesName = ddlb_1.Text(index)

dw_2.SetReDraw(FALSE)
dw_2.SetFilter( "#1 = '" + ls_SeriesName + "'" )
dw_2.Filter()
dw_2.SetReDraw(TRUE)

end event

type mle_1 from multilineedit within w_line
integer x = 1669
integer y = 1712
integer width = 2862
integer height = 260
integer taborder = 30
boolean bringtotop = true
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type st_8 from statictext within w_line
integer x = 1669
integer y = 1628
integer width = 1221
integer height = 80
boolean bringtotop = true
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Data: (Logs of ue_clicked(string) from wb_1.event)"
boolean focusrectangle = false
end type

type st_1 from statictext within w_line
integer x = 50
integer y = 36
integer width = 4466
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
string text = "The tool can read your chart imported from DataWindow without providing raw data. In the generated data table, you can edit the data contents, and create new corresponding chart by "
boolean focusrectangle = false
end type

type st_3 from statictext within w_line
integer x = 50
integer y = 112
integer width = 2962
integer height = 84
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "pressing Enter. When clicking the nodes on the generated chart, the relevant data contents will display in the frame below. "
boolean focusrectangle = false
end type

type st_7 from statictext within w_line
integer x = 535
integer y = 204
integer width = 617
integer height = 76
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

type st_9 from statictext within w_line
integer x = 2834
integer y = 192
integer width = 443
integer height = 76
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

