<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<HTML>
<FORM NAME="Pcontrol">
<HEAD>
<TITLE>Pcontrol</TITLE>
 
<SCRIPT LANGUAGE="JavaScript">

var timerID = null
var timerINT = 20                               //interval (ms)
 
var playflag=0;
var inkey=0
var tkey = "1"
 
var icons = new Array(20);                          //btn image
icons[1]=new Image();icons[1].src="btn14.gif";
icons[2]=new Image();icons[2].src="btn11.gif";
icons[3]=new Image();icons[3].src="btn12.gif";
icons[4]=new Image();icons[4].src="btn13.gif";
icons[11]=new Image();icons[11].src="btn24.gif";
icons[12]=new Image();icons[12].src="btn21.gif";
icons[13]=new Image();icons[13].src="btn22.gif";
icons[14]=new Image();icons[14].src="btn23.gif";
 
 systm=""
 ver=navigator.appVersion
 Nv=ver.charAt(0)
 len=ver.length
 for(iln=0;iln<len;iln++) if(ver.charAt(iln)=="(") break
 systm = ver.charAt(iln+1).toUpperCase()
 
 if (systm != "C"){if (Nv >= 4){
  document.onkeydown = keyDown
  document.captureEvents(Event.KEYDOWN)
 }}
 
function keyDown(DnEvents){
  k=DnEvents.which
  if (k == 52){keyscan(1)}                    //4
  if (k == 56){keyscan(2)}                    //8
  if (k == 54){keyscan(3)}                    //6
  if (k == 50){keyscan(4)}                    //2
}
 
function interval1(){
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
  clearTimeout(timerID)
//10key scan
 if (systm == "C"){Nv=3}
 if (Nv <= 3){
 
   document.Pcontrol.DUM.click()
   tkey=document.Pcontrol.tenkey.value
  if (tkey != ""){
   document.Pcontrol.tenkey.value=""
   document.Pcontrol.tenkey.focus()
   if (tkey.indexOf("4") >= 0){keyscan(1)}
   if (tkey.indexOf("8") >= 0){keyscan(2)}
   if (tkey.indexOf("6") >= 0){keyscan(3)}
   if (tkey.indexOf("2") >= 0){keyscan(4)}
  }else{
   document.Pcontrol.tenkey.focus()
  }
 }else{
 
 
 }
  timerID = setTimeout("interval1()",timerINT)
}
 
function intSTOP(){
  clearTimeout(timerID)
}
 
 
//btn write
function SetBtn(flag, position){
document.images[position].src=icons[flag].src;
}
 
//no operation
function nop(){}
 
//MODE change
function MODEcheck(){}
 
//starter
function starter(){
playflag=playflag+1
if (playflag == 1){SetBtn(11,1)
                   SetBtn(2,0)
                   SetBtn(3,2)
                   SetBtn(4,3)
                   tkey=""
                   document.Pcontrol.tenkey.value=""
                   document.Pcontrol.tenkey.focus()
                   timerID = setTimeout("interval1()",timerINT)
                  }
if (playflag == 2){playflag=0
                   SetBtn(1,1)
                   SetBtn(2,0)
                   SetBtn(3,2)
                   SetBtn(4,3)
                   document.Pcontrol.tenkey.value=""
                   intSTOP()
                   document.Pcontrol.MES.value="Click START";
                  }
parent.Pman.document.PMAN.CTRL.value="11";
}
 
//key scan
function keyscan(kscan){
inkey=kscan;
if (playflag == 1){
                   tmpvalue=parent.Pman.document.PMAN.CTRL.value
                   if (tmpvalue != "0"){
                      parent.Pman.document.PMAN.CTRL.value=inkey
                      if (inkey == "1"){
                                        SetBtn(11,1)
                                        SetBtn(2,0)
                                        SetBtn(3,2)
                                        SetBtn(4,3)
                      }
                      if (inkey == "2"){
                                        SetBtn(1,1)
                                        SetBtn(12,0)
                                        SetBtn(3,2)
                                        SetBtn(4,3)
                      }
                      if (inkey == "3"){
                                        SetBtn(1,1)
                                        SetBtn(2,0)
                                        SetBtn(13,2)
                                        SetBtn(4,3)
                      }
                      if (inkey == "4"){
                                        SetBtn(1,1)
                                        SetBtn(2,0)
                                        SetBtn(3,2)
                                        SetBtn(14,3)
                      }
                   }
                  }
}
 
 
//-->
</SCRIPT>
</HEAD>
 
 
<BODY BGCOLOR="#FFFF00" TEXT="#004400" LINK="#FFFF00" VLINK="#FFFF00">
 
<CENTER><H1>P-MAN</H1></CENTER><BR>
<H3><CENTER>SCORE:<INPUT TYPE="text" NAME="MES" SIZE=13 VALUE = "Click START" ></CENTER></H3><BR>
 
<CENTER><A HREF="javascript:keyscan(2)" onMouseOver="keyscan(2)"><IMG WIDTH=64 HEIGHT=32 SRC="btn11.gif"></A><BR><A HREF="javascript:keyscan(1)" onMouseOver="keyscan(1)"><IMG WIDTH=64 HEIGHT=32 SRC="btn14.gif"></A><A HREF="javascript:keyscan(3)" onMouseOver="keyscan(3)"><IMG WIDTH=64 HEIGHT=32 SRC="btn12.gif"></A><BR><A HREF="javascript:keyscan(4)" onMouseOver="keyscan(4)"><IMG WIDTH=64 HEIGHT=32 SRC="btn13.gif"></A><BR></CENTER><BR><P>
 
<CENTER><A HREF="javascript:starter()"><IMG SRC="btn3.gif"></A></CENTER>
<CENTER><A HREF="javascript:history.back()" TARGET="_top"><IMG SRC="btn4.gif"></A></CENTER>
 
<SCRIPT LANGUAGE="JavaScript">

 ver=navigator.appVersion
 len=ver.length
 for(iln=0;iln<len;iln++) if(ver.charAt(iln)=="(") break
 systm = ver.charAt(iln+1).toUpperCase()
 if(systm !="C"){
document.write("<BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P>")
document.write("<BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P>")
document.write("<BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P>")
document.write("<BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P>")
document.write("<BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P><BR><P>")
}
 

</SCRIPT>
 
 
 
<INPUT TYPE="text" NAME="tenkey" SIZE=1 VALUE = "" >
<INPUT TYPE="button" NAME="DUM" VALUE="">
 
</BODY>
</FORM>
</HTML>