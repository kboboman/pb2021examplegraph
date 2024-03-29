﻿$PBExportHeader$w_quickstart.srw
forward
global type w_quickstart from w_chart_base
end type
type st_3 from statictext within w_quickstart
end type
type mle_2 from multilineedit within w_quickstart
end type
type st_2 from statictext within w_quickstart
end type
type mle_1 from multilineedit within w_quickstart
end type
type st_1 from statictext within w_quickstart
end type
end forward

global type w_quickstart from w_chart_base
string tag = "welcome"
integer width = 4649
integer height = 2152
st_3 st_3
mle_2 mle_2
st_2 st_2
mle_1 mle_1
st_1 st_1
end type
global w_quickstart w_quickstart

type variables


end variables

on w_quickstart.create
int iCurrent
call super::create
this.st_3=create st_3
this.mle_2=create mle_2
this.st_2=create st_2
this.mle_1=create mle_1
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_3
this.Control[iCurrent+2]=this.mle_2
this.Control[iCurrent+3]=this.st_2
this.Control[iCurrent+4]=this.mle_1
this.Control[iCurrent+5]=this.st_1
end on

on w_quickstart.destroy
call super::destroy
destroy(this.st_3)
destroy(this.mle_2)
destroy(this.st_2)
destroy(this.mle_1)
destroy(this.st_1)
end on

event open;call super::open;
mle_1.Text = "<body>~r~n" +&
		"    <!-- prepare a DOM with width and height for ECharts -->~r~n" +&
		"    <div id=~"main~" style=~"width: 400px;height:300px;~"></div>~r~n" +&
		"</body>~r~n"
		
mle_2.Text = "<!DOCTYPE html>~r~n" +&
		"<html>~r~n" +&
		"<head>~r~n" +&
		"    <meta charset=~"utf-8~">~r~n" +&
		"    <title> ECharts</title>~r~n" +&
		"    <!-- including echarts.js  file-->~r~n" +&
		"    <script src=~"echarts.min.js~"></script>~r~n" +&
		"</head>~r~n" +&
		"<body>~r~n" +&
		"    <!-- prepare a DOM container with width and height -->~r~n" +&
		"    <div id=~"main~" style=~"width: 400px;height:300px;~"></div>~r~n" +&
		"    <script type=~"text/javascript~">~r~n" +&
		"        // based on prepared DOM, initialize echarts instance~r~n" +&
		"        var myChart = echarts.init(document.getElementById(~'main~'),'light');~r~n" +&
		"~r~n" +&
		"        // specify chart configuration item and data~r~n" +&
		"        var option = {~r~n" +&
		"            title: {~r~n" +&
		"                text: ~'Simple example~'~r~n" +&
		"            },~r~n" +&
		"            tooltip: {},~r~n" +&
		"            legend: {~r~n" +&
		"                data:[~'Sales~']~r~n" +&
		"            },~r~n" +&
		"            xAxis: {~r~n" +&
		"                data: [~"shirt~",~"cardign~",~"chiffon shirt~",~"pants~",~"heels~",~"socks~"]~r~n" +&
		"            },~r~n" +&
		"            yAxis: {},~r~n" +&
		"            series: [{~r~n" +&
		"                name: ~'Sales~',~r~n" +&
		"                type: ~'bar~',~r~n" +&
		"                data: [5, 20, 36, 10, 10, 20]~r~n" +&
		"            }]~r~n" +&
		"        };~r~n" +&
		"~r~n" +&
		"        // use configuration item and data specified to show chart~r~n" +&
		"        myChart.setOption(option);~r~n" +&
		"    </script>~r~n" +&
		"</body>~r~n" +&
		"</html>~r~n"
end event

type wb_1 from w_chart_base`wb_1 within w_quickstart
integer x = 1897
integer y = 740
integer width = 2569
integer height = 1252
string defaulturl = "file:///example.html"
end type

type st_3 from statictext within w_quickstart
integer x = 41
integer y = 636
integer width = 4082
integer height = 80
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 128
long backcolor = 67108864
string text = "Then, we can initialize an instance using echarts.init, and create a bar chart with setOption. The complete code and the generated chart are shown below."
boolean focusrectangle = false
end type

type mle_2 from multilineedit within w_quickstart
integer x = 41
integer y = 740
integer width = 1728
integer height = 1252
integer taborder = 10
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
boolean italic = true
long textcolor = 33554432
long backcolor = 134217731
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_quickstart
integer x = 41
integer y = 176
integer width = 2830
integer height = 80
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 128
long backcolor = 67108864
string text = "Before drawing a chart, we need to prepare a DOM container with suitable width and height for the chart."
boolean focusrectangle = false
end type

type mle_1 from multilineedit within w_quickstart
integer x = 41
integer y = 272
integer width = 2990
integer height = 312
integer taborder = 10
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
boolean italic = true
long textcolor = 33554432
long backcolor = 134217731
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_quickstart
integer x = 41
integer y = 52
integer width = 1591
integer height = 104
boolean bringtotop = true
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "QuickStart - Draw a simple chart via WebBrowser"
boolean focusrectangle = false
end type

