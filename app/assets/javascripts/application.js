// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var timeout    = 500;
var closetimer = 0;
var ddmenuitem = 0;

function nav_open()
{  nav_canceltimer();
   nav_close();
   ddmenuitem = $(this).find('ul').css('visibility', 'visible');}

function nav_close()
{  if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');}

function nav_timer()
{  closetimer = window.setTimeout(nav_close, timeout);}

function nav_canceltimer()
{  if(closetimer)
   {  window.clearTimeout(closetimer);
      closetimer = null;}}

$(document).ready(function()
{  $('#nav > li').bind('mouseover', nav_open)
   $('#nav > li').bind('mouseout',  nav_timer)});

document.onclick = nav_close;