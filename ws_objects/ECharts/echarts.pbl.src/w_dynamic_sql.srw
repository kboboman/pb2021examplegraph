﻿$PBExportHeader$w_dynamic_sql.srw
forward
global type w_dynamic_sql from w_chart_base
end type
end forward

global type w_dynamic_sql from w_chart_base
string tag = "sql"
integer width = 4658
integer height = 2088
event ue_select_syntax ( )
end type
global w_dynamic_sql w_dynamic_sql

type variables
String is_SQL, is_Style
end variables

forward prototypes
public subroutine wf_sql_datastore (string as_sql, string as_style)
public subroutine wf_input_sql ()
end prototypes

event ue_select_syntax();
Wf_Input_SQL()
end event

public subroutine wf_sql_datastore (string as_sql, string as_style);
String ls_Option, ls_Json,  ls_Title, ls_Graphtype, ls_Theme,  ls_Category, ls_Value, ls_SQL, ls_Series 
Long 	ll_RootObject
Boolean lb_ToolBox

JsonParser lnv_JsonParser

lnv_JsonParser = Create JsonParser

ls_Json = as_style
lnv_JsonParser.LoadString(ls_Json)
ll_RootObject = lnv_JsonParser.GetRootItem()

//title
ls_Title = lnv_JsonParser.GetItemString(ll_RootObject, "Title")
//graphtype
ls_GraphType = lnv_JsonParser.GetItemString(ll_RootObject, "GraphType")
//theme
ls_Theme = lnv_JsonParser.GetItemString(ll_RootObject, "Theme")
//toolbox
lb_ToolBox = lnv_JsonParser.GetItemBoolean(ll_RootObject, "ToolBox")

lnv_JsonParser = Create JsonParser
ls_Json = as_sql
lnv_JsonParser.LoadString(ls_Json)
ll_RootObject = lnv_JsonParser.GetRootItem()
//SQL
ls_SQL =  lnv_JsonParser.GetItemString(ll_RootObject, "SQL")
//Category
ls_Category = lnv_JsonParser.GetItemString(ll_RootObject, "Category")
//Value
ls_Value = lnv_JsonParser.GetItemString(ll_RootObject, "Value")
//Series
ls_Series = lnv_JsonParser.GetItemString(ll_RootObject, "Series")
//Title
IF ls_Title <> "" THEN
	wb_1.of_SetTitle(ls_Title)
END IF
//Theme 
IF ls_Theme <> "" THEN
	wb_1.of_SetTheme(ls_Theme)
END IF
//GraphType
IF ls_GraphType <>"" THEN
	wb_1.of_SetStyle(lower(ls_GraphType))
END IF
//ToolBox
wb_1.of_SetToolBox(lb_ToolBox)
//CreateOption
If Len(ls_Series) > 0 Then
	ls_Option = wb_1.of_createoption_series( ls_SQL, ls_Category, ls_Value, ls_Series )
Else
	ls_Option = wb_1.of_CreateOption( ls_SQL, ls_Category, ls_Value )
End If
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
SetReDraw( False )
wb_1.of_Apply()
SetReDraw( True )

end subroutine

public subroutine wf_input_sql ();/*accept SQL by input SQL syntax to generate echarts*/
String ls_SQL

OpenWithParm(w_input_sql, is_SQL)

ls_SQL = Message.StringParm

IF Len(ls_SQL) >0 THEN
	is_SQL = ls_SQL
	wf_sql_datastore(is_SQL, is_Style)
END IF

end subroutine

on w_dynamic_sql.create
call super::create
end on

on w_dynamic_sql.destroy
call super::destroy
end on

event open;call super::open;String ls_Title, ls_GraphType, ls_Theme
Long ls_Height, ls_Width
Boolean ls_ToolBox, ls_DataZoom
DataStore lds_data
String ls_DWSyntax
Long ll_RootObject
JsonGenerator ljson_str
ljson_str = Create JsonGenerator
ll_RootObject = ljson_str.CreateJsonObject()


ls_Title = "Default title"
ls_GraphType = gs_GraphType
ls_Theme = gs_EChartsTheme
ls_Height = 500
ls_Width = 800
ls_ToolBox = True
ls_DataZoom = True


ljson_str.AddItemString(ll_RootObject, "Title", ls_Title)
ljson_str.AddItemString(ll_RootObject, "GraphType", ls_GraphType)
ljson_str.AddItemString(ll_RootObject, "Theme", ls_Theme)
ljson_str.AddItemNumber(ll_RootObject, "Height", ls_Height)
ljson_str.AddItemNumber(ll_RootObject, "Width", ls_Width)
ljson_str.AddItemBoolean(ll_RootObject, "ToolBox", ls_Toolbox)
ljson_str.AddItemBoolean(ll_RootObject, "DataZoom", ls_Datazoom)


is_Style = ljson_str.GetJsonString()

IF IsValid( ljson_str ) THEN Destroy (ljson_str)

Post Wf_Input_SQL()
end event

event ue_setoption;IF Len (as_arg) > 0 THEN
	is_Style = as_arg
	wf_sql_datastore(is_SQL, is_Style)
END IF
  
end event

event activate;parentwindow().dynamic post event ue_refresh_visible(is_Style) 
end event

type wb_1 from w_chart_base`wb_1 within w_dynamic_sql
integer x = 37
integer y = 36
integer width = 4585
integer height = 1908
end type

