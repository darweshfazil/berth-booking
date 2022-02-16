<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="web.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify Requests</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<style>
	table{
		margin-top:5%;
	}
	.heading {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: black;
            color: white;
        }
        .select2-container{box-sizing:border-box;display:inline-block;margin:0;position:relative;vertical-align:middle}.select2-container .select2-selection--single{box-sizing:border-box;cursor:pointer;display:block;height:28px;user-select:none;-webkit-user-select:none}.select2-container .select2-selection--single .select2-selection__rendered{display:block;padding-left:8px;padding-right:20px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.select2-container .select2-selection--single .select2-selection__clear{position:relative}.select2-container[dir="rtl"] .select2-selection--single .select2-selection__rendered{padding-right:8px;padding-left:20px}.select2-container .select2-selection--multiple{box-sizing:border-box;cursor:pointer;display:block;min-height:32px;user-select:none;-webkit-user-select:none}.select2-container .select2-selection--multiple .select2-selection__rendered{display:inline-block;overflow:hidden;padding-left:8px;text-overflow:ellipsis;white-space:nowrap}.select2-container .select2-search--inline{float:left}.select2-container .select2-search--inline .select2-search__field{box-sizing:border-box;border:none;font-size:100%;margin-top:5px;padding:0}.select2-container .select2-search--inline .select2-search__field::-webkit-search-cancel-button{-webkit-appearance:none}.select2-dropdown{background-color:white;border:1px solid #aaa;border-radius:4px;box-sizing:border-box;display:block;position:absolute;left:-100000px;width:100%;z-index:1051}.select2-results{display:block}.select2-results__options{list-style:none;margin:0;padding:0}.select2-results__option{padding:6px;user-select:none;-webkit-user-select:none}.select2-results__option[aria-selected]{cursor:pointer}.select2-container--open .select2-dropdown{left:0}.select2-container--open .select2-dropdown--above{border-bottom:none;border-bottom-left-radius:0;border-bottom-right-radius:0}.select2-container--open .select2-dropdown--below{border-top:none;border-top-left-radius:0;border-top-right-radius:0}.select2-search--dropdown{display:block;padding:4px}.select2-search--dropdown .select2-search__field{padding:4px;width:100%;box-sizing:border-box}.select2-search--dropdown .select2-search__field::-webkit-search-cancel-button{-webkit-appearance:none}.select2-search--dropdown.select2-search--hide{display:none}.select2-close-mask{border:0;margin:0;padding:0;display:block;position:fixed;left:0;top:0;min-height:100%;min-width:100%;height:auto;width:auto;opacity:0;z-index:99;background-color:#fff;filter:alpha(opacity=0)}.select2-hidden-accessible{border:0 !important;clip:rect(0 0 0 0) !important;-webkit-clip-path:inset(50%) !important;clip-path:inset(50%) !important;height:1px !important;overflow:hidden !important;padding:0 !important;position:absolute !important;width:1px !important;white-space:nowrap !important}.select2-container--default .select2-selection--single{background-color:#fff;border:1px solid #aaa;border-radius:4px}.select2-container--default .select2-selection--single .select2-selection__rendered{color:#444;line-height:28px}.select2-container--default .select2-selection--single .select2-selection__clear{cursor:pointer;float:right;font-weight:bold}.select2-container--default .select2-selection--single .select2-selection__placeholder{color:#999}.select2-container--default .select2-selection--single .select2-selection__arrow{height:26px;position:absolute;top:1px;right:1px;width:20px}.select2-container--default .select2-selection--single .select2-selection__arrow b{border-color:#888 transparent transparent transparent;border-style:solid;border-width:5px 4px 0 4px;height:0;left:50%;margin-left:-4px;margin-top:-2px;position:absolute;top:50%;width:0}.select2-container--default[dir="rtl"] .select2-selection--single .select2-selection__clear{float:left}.select2-container--default[dir="rtl"] .select2-selection--single .select2-selection__arrow{left:1px;right:auto}.select2-container--default.select2-container--disabled .select2-selection--single{background-color:#eee;cursor:default}.select2-container--default.select2-container--disabled .select2-selection--single .select2-selection__clear{display:none}.select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b{border-color:transparent transparent #888 transparent;border-width:0 4px 5px 4px}.select2-container--default .select2-selection--multiple{background-color:white;border:1px solid #aaa;border-radius:4px;cursor:text}.select2-container--default .select2-selection--multiple .select2-selection__rendered{box-sizing:border-box;list-style:none;margin:0;padding:0 5px;width:100%}.select2-container--default .select2-selection--multiple .select2-selection__rendered li{list-style:none}.select2-container--default .select2-selection--multiple .select2-selection__placeholder{color:#999;margin-top:5px;float:left}.select2-container--default .select2-selection--multiple .select2-selection__clear{cursor:pointer;float:right;font-weight:bold;margin-top:5px;margin-right:10px}.select2-container--default .select2-selection--multiple .select2-selection__choice{background-color:#e4e4e4;border:1px solid #aaa;border-radius:4px;cursor:default;float:left;margin-right:5px;margin-top:5px;padding:0 5px}.select2-container--default .select2-selection--multiple .select2-selection__choice__remove{color:#999;cursor:pointer;display:inline-block;font-weight:bold;margin-right:2px}.select2-container--default .select2-selection--multiple .select2-selection__choice__remove:hover{color:#333}.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__choice,.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__placeholder,.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-search--inline{float:right}.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__choice{margin-left:5px;margin-right:auto}.select2-container--default[dir="rtl"] .select2-selection--multiple .select2-selection__choice__remove{margin-left:2px;margin-right:auto}.select2-container--default.select2-container--focus .select2-selection--multiple{border:solid black 1px;outline:0}.select2-container--default.select2-container--disabled .select2-selection--multiple{background-color:#eee;cursor:default}.select2-container--default.select2-container--disabled .select2-selection__choice__remove{display:none}.select2-container--default.select2-container--open.select2-container--above .select2-selection--single,.select2-container--default.select2-container--open.select2-container--above .select2-selection--multiple{border-top-left-radius:0;border-top-right-radius:0}.select2-container--default.select2-container--open.select2-container--below .select2-selection--single,.select2-container--default.select2-container--open.select2-container--below .select2-selection--multiple{border-bottom-left-radius:0;border-bottom-right-radius:0}.select2-container--default .select2-search--dropdown .select2-search__field{border:1px solid #aaa}.select2-container--default .select2-search--inline .select2-search__field{background:transparent;border:none;outline:0;box-shadow:none;-webkit-appearance:textfield}.select2-container--default .select2-results>.select2-results__options{max-height:200px;overflow-y:auto}.select2-container--default .select2-results__option[role=group]{padding:0}.select2-container--default .select2-results__option[aria-disabled=true]{color:#999}.select2-container--default .select2-results__option[aria-selected=true]{background-color:#ddd}.select2-container--default .select2-results__option .select2-results__option{padding-left:1em}.select2-container--default .select2-results__option .select2-results__option .select2-results__group{padding-left:0}.select2-container--default .select2-results__option .select2-results__option .select2-results__option{margin-left:-1em;padding-left:2em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-2em;padding-left:3em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-3em;padding-left:4em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-4em;padding-left:5em}.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option{margin-left:-5em;padding-left:6em}.select2-container--default .select2-results__option--highlighted[aria-selected]{background-color:#5897fb;color:white}.select2-container--default .select2-results__group{cursor:default;display:block;padding:6px}.select2-container--classic .select2-selection--single{background-color:#f7f7f7;border:1px solid #aaa;border-radius:4px;outline:0;background-image:-webkit-linear-gradient(top, #fff 50%, #eee 100%);background-image:-o-linear-gradient(top, #fff 50%, #eee 100%);background-image:linear-gradient(to bottom, #fff 50%, #eee 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFFFFFF', endColorstr='#FFEEEEEE', GradientType=0)}.select2-container--classic .select2-selection--single:focus{border:1px solid #5897fb}.select2-container--classic .select2-selection--single .select2-selection__rendered{color:#444;line-height:28px}.select2-container--classic .select2-selection--single .select2-selection__clear{cursor:pointer;float:right;font-weight:bold;margin-right:10px}.select2-container--classic .select2-selection--single .select2-selection__placeholder{color:#999}.select2-container--classic .select2-selection--single .select2-selection__arrow{background-color:#ddd;border:none;border-left:1px solid #aaa;border-top-right-radius:4px;border-bottom-right-radius:4px;height:26px;position:absolute;top:1px;right:1px;width:20px;background-image:-webkit-linear-gradient(top, #eee 50%, #ccc 100%);background-image:-o-linear-gradient(top, #eee 50%, #ccc 100%);background-image:linear-gradient(to bottom, #eee 50%, #ccc 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFEEEEEE', endColorstr='#FFCCCCCC', GradientType=0)}.select2-container--classic .select2-selection--single .select2-selection__arrow b{border-color:#888 transparent transparent transparent;border-style:solid;border-width:5px 4px 0 4px;height:0;left:50%;margin-left:-4px;margin-top:-2px;position:absolute;top:50%;width:0}.select2-container--classic[dir="rtl"] .select2-selection--single .select2-selection__clear{float:left}.select2-container--classic[dir="rtl"] .select2-selection--single .select2-selection__arrow{border:none;border-right:1px solid #aaa;border-radius:0;border-top-left-radius:4px;border-bottom-left-radius:4px;left:1px;right:auto}.select2-container--classic.select2-container--open .select2-selection--single{border:1px solid #5897fb}.select2-container--classic.select2-container--open .select2-selection--single .select2-selection__arrow{background:transparent;border:none}.select2-container--classic.select2-container--open .select2-selection--single .select2-selection__arrow b{border-color:transparent transparent #888 transparent;border-width:0 4px 5px 4px}.select2-container--classic.select2-container--open.select2-container--above .select2-selection--single{border-top:none;border-top-left-radius:0;border-top-right-radius:0;background-image:-webkit-linear-gradient(top, #fff 0%, #eee 50%);background-image:-o-linear-gradient(top, #fff 0%, #eee 50%);background-image:linear-gradient(to bottom, #fff 0%, #eee 50%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFFFFFF', endColorstr='#FFEEEEEE', GradientType=0)}.select2-container--classic.select2-container--open.select2-container--below .select2-selection--single{border-bottom:none;border-bottom-left-radius:0;border-bottom-right-radius:0;background-image:-webkit-linear-gradient(top, #eee 50%, #fff 100%);background-image:-o-linear-gradient(top, #eee 50%, #fff 100%);background-image:linear-gradient(to bottom, #eee 50%, #fff 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFEEEEEE', endColorstr='#FFFFFFFF', GradientType=0)}.select2-container--classic .select2-selection--multiple{background-color:white;border:1px solid #aaa;border-radius:4px;cursor:text;outline:0}.select2-container--classic .select2-selection--multiple:focus{border:1px solid #5897fb}.select2-container--classic .select2-selection--multiple .select2-selection__rendered{list-style:none;margin:0;padding:0 5px}.select2-container--classic .select2-selection--multiple .select2-selection__clear{display:none}.select2-container--classic .select2-selection--multiple .select2-selection__choice{background-color:#e4e4e4;border:1px solid #aaa;border-radius:4px;cursor:default;float:left;margin-right:5px;margin-top:5px;padding:0 5px}.select2-container--classic .select2-selection--multiple .select2-selection__choice__remove{color:#888;cursor:pointer;display:inline-block;font-weight:bold;margin-right:2px}.select2-container--classic .select2-selection--multiple .select2-selection__choice__remove:hover{color:#555}.select2-container--classic[dir="rtl"] .select2-selection--multiple .select2-selection__choice{float:right;margin-left:5px;margin-right:auto}.select2-container--classic[dir="rtl"] .select2-selection--multiple .select2-selection__choice__remove{margin-left:2px;margin-right:auto}.select2-container--classic.select2-container--open .select2-selection--multiple{border:1px solid #5897fb}.select2-container--classic.select2-container--open.select2-container--above .select2-selection--multiple{border-top:none;border-top-left-radius:0;border-top-right-radius:0}.select2-container--classic.select2-container--open.select2-container--below .select2-selection--multiple{border-bottom:none;border-bottom-left-radius:0;border-bottom-right-radius:0}.select2-container--classic .select2-search--dropdown .select2-search__field{border:1px solid #aaa;outline:0}.select2-container--classic .select2-search--inline .select2-search__field{outline:0;box-shadow:none}.select2-container--classic .select2-dropdown{background-color:#fff;border:1px solid transparent}.select2-container--classic .select2-dropdown--above{border-bottom:none}.select2-container--classic .select2-dropdown--below{border-top:none}.select2-container--classic .select2-results>.select2-results__options{max-height:200px;overflow-y:auto}.select2-container--classic .select2-results__option[role=group]{padding:0}.select2-container--classic .select2-results__option[aria-disabled=true]{color:grey}.select2-container--classic .select2-results__option--highlighted[aria-selected]{background-color:#3875d7;color:#fff}.select2-container--classic .select2-results__group{cursor:default;display:block;padding:6px}.select2-container--classic.select2-container--open .select2-dropdown{border-color:#5897fb}
        .daterangepicker {
  position: absolute;
  color: inherit;
  background-color: skyblue;
  border-radius: 4px;
  width: 278px;
  padding: 4px;
  margin-top: 1px;
  top: 100px;
  left: 20px;
 }
  .daterangepicker:before, .daterangepicker:after {
    position: absolute;
    display: inline-block;
    border-bottom-color: rgba(0, 0, 0, 0.2);
    content: ''; }
  .daterangepicker:before {
    top: -7px;
    border-right: 7px solid transparent;
    border-left: 7px solid transparent;
    border-bottom: 7px solid #ccc; }
  .daterangepicker:after {
    top: -6px;
    border-right: 6px solid transparent;
    border-bottom: 6px solid #fff;
    border-left: 6px solid transparent; }
  .daterangepicker.opensleft:before {
    right: 9px; }
  .daterangepicker.opensleft:after {
    right: 10px; }
  .daterangepicker.openscenter:before {
    left: 0;
    right: 0;
    width: 0;
    margin-left: auto;
    margin-right: auto; }
  .daterangepicker.openscenter:after {
    left: 0;
    right: 0;
    width: 0;
    margin-left: auto;
    margin-right: auto; }
  .daterangepicker.opensright:before {
    left: 9px; }
  .daterangepicker.opensright:after {
    left: 10px; }
  .daterangepicker.dropup {
    margin-top: -5px; }
    .daterangepicker.dropup:before {
      top: initial;
      bottom: -7px;
      border-bottom: initial;
      border-top: 7px solid #ccc; }
    .daterangepicker.dropup:after {
      top: initial;
      bottom: -6px;
      border-bottom: initial;
      border-top: 6px solid #fff; }
  .daterangepicker.dropdown-menu {
    max-width: none;
    z-index: 3001; }
  .daterangepicker.single .ranges, .daterangepicker.single .calendar {
    float: none; }
  .daterangepicker.show-calendar .calendar {
    display: block; }
  .daterangepicker .calendar {
    display: none;
    max-width: 270px;
    margin: 4px; }
    .daterangepicker .calendar.single .calendar-table {
      border: none; }
    .daterangepicker .calendar th, .daterangepicker .calendar td {
      white-space: nowrap;
      text-align: center;
      min-width: 32px; }
  .daterangepicker .calendar-table {
    border: 1px solid #fff;
    padding: 4px;
    border-radius: 4px;
    background-color: #fff; }
  .daterangepicker table {
    width: 100%;
    margin: 0; }
  .daterangepicker td, .daterangepicker th {
    text-align: center;
    width: 20px;
    height: 20px;
    border-radius: 4px;
    border: 1px solid transparent;
    white-space: nowrap;
    cursor: pointer; }
    .daterangepicker td.available:hover, .daterangepicker th.available:hover {
      background-color: #eee;
      border-color: transparent;
      color: inherit; }
    .daterangepicker td.week, .daterangepicker th.week {
      font-size: 80%;
      color: #ccc; }
  .daterangepicker td.off, .daterangepicker td.off.in-range, .daterangepicker td.off.start-date, .daterangepicker td.off.end-date {
    background-color: #fff;
    border-color: transparent;
    color: #999; }
  .daterangepicker td.in-range {
    background-color: #ebf4f8;
    border-color: transparent;
    color: #000;
    border-radius: 0; }
  .daterangepicker td.start-date {
    border-radius: 4px 0 0 4px; }
  .daterangepicker td.end-date {
    border-radius: 0 4px 4px 0; }
  .daterangepicker td.start-date.end-date {
    border-radius: 4px; }
  .daterangepicker td.active, .daterangepicker td.active:hover {
    background-color: #357ebd;
    border-color: transparent;
    color: #fff; }
  .daterangepicker th.month {
    width: auto; }
  .daterangepicker td.disabled, .daterangepicker option.disabled {
    color: #999;
    cursor: not-allowed;
    text-decoration: line-through; }
  .daterangepicker select.monthselect, .daterangepicker select.yearselect {
    font-size: 12px;
    padding: 1px;
    height: auto;
    margin: 0;
    cursor: default; }
  .daterangepicker select.monthselect {
    margin-right: 2%;
    width: 56%; }
  .daterangepicker select.yearselect {
    width: 40%; }
  .daterangepicker select.hourselect, .daterangepicker select.minuteselect, .daterangepicker select.secondselect, .daterangepicker select.ampmselect {
    width: 50px;
    margin-bottom: 0; }
  .daterangepicker .input-mini {
    border: 1px solid #ccc;
    border-radius: 4px;
    color: #555;
    height: 30px;
    line-height: 30px;
    display: block;
    vertical-align: middle;
    margin: 0 0 5px 0;
    padding: 0 6px 0 28px;
    width: 100%; }
    .daterangepicker .input-mini.active {
      border: 1px solid #08c;
      border-radius: 4px; }
  .daterangepicker .daterangepicker_input {
    position: relative; }
    .daterangepicker .daterangepicker_input i {
      position: absolute;
      left: 8px;
      top: 8px; }
  .daterangepicker.rtl .input-mini {
    padding-right: 28px;
    padding-left: 6px; }
  .daterangepicker.rtl .daterangepicker_input i {
    left: auto;
    right: 8px; }
  .daterangepicker .calendar-time {
    text-align: center;
    margin: 5px auto;
    line-height: 30px;
    position: relative;
    padding-left: 28px; }
    .daterangepicker .calendar-time select.disabled {
      color: #ccc;
      cursor: not-allowed; }

.ranges {
  font-size: 11px;
  float: none;
  margin: 4px;
  text-align: left; }
  .ranges ul {
    list-style: none;
    margin: 0 auto;
    padding: 0;
    width: 100%; }
  .ranges li {
    font-size: 13px;
    background-color: #f5f5f5;
    border: 1px solid #f5f5f5;
    border-radius: 4px;
    color: #08c;
    padding: 3px 12px;
    margin-bottom: 8px;
    cursor: pointer; }
    .ranges li:hover {
      background-color: #08c;
      border: 1px solid #08c;
      color: #fff; }
    .ranges li.active {
      background-color: #08c;
      border: 1px solid #08c;
      color: #fff; }

@media (min-width: 564px) {
  .daterangepicker {
    width: auto; }
    .daterangepicker .ranges ul {
      width: 160px; }
    .daterangepicker.single .ranges ul {
      width: 100%; }
    .daterangepicker.single .calendar.left {
      clear: none; }
    .daterangepicker.single.ltr .ranges, .daterangepicker.single.ltr .calendar {
      float: left; }
    .daterangepicker.single.rtl .ranges, .daterangepicker.single.rtl .calendar {
      float: right; }
    .daterangepicker.ltr {
      direction: ltr;
      text-align: left; }
      .daterangepicker.ltr .calendar.left {
        clear: left;
        margin-right: 0; }
        .daterangepicker.ltr .calendar.left .calendar-table {
          border-right: none;
          border-top-right-radius: 0;
          border-bottom-right-radius: 0; }
      .daterangepicker.ltr .calendar.right {
        margin-left: 0; }
        .daterangepicker.ltr .calendar.right .calendar-table {
          border-left: none;
          border-top-left-radius: 0;
          border-bottom-left-radius: 0; }
      .daterangepicker.ltr .left .daterangepicker_input {
        padding-right: 12px; }
      .daterangepicker.ltr .calendar.left .calendar-table {
        padding-right: 12px; }
      .daterangepicker.ltr .ranges, .daterangepicker.ltr .calendar {
        float: left; }
    .daterangepicker.rtl {
      direction: rtl;
      text-align: right; }
      .daterangepicker.rtl .calendar.left {
        clear: right;
        margin-left: 0; }
        .daterangepicker.rtl .calendar.left .calendar-table {
          border-left: none;
          border-top-left-radius: 0;
          border-bottom-left-radius: 0; }
      .daterangepicker.rtl .calendar.right {
        margin-right: 0; }
        .daterangepicker.rtl .calendar.right .calendar-table {
          border-right: none;
          border-top-right-radius: 0;
          border-bottom-right-radius: 0; }
      .daterangepicker.rtl .left .daterangepicker_input {
        padding-left: 12px; }
      .daterangepicker.rtl .calendar.left .calendar-table {
        padding-left: 12px; }
      .daterangepicker.rtl .ranges, .daterangepicker.rtl .calendar {
        text-align: right;
        float: right; } }
@media (min-width: 730px) {
  .daterangepicker .ranges {
    width: auto; }
  .daterangepicker.ltr .ranges {
    float: left; }
  .daterangepicker.rtl .ranges {
    float: right; }
  .daterangepicker .calendar.left {
    clear: none !important; } }

   .font-robo {
  font-family: "Roboto", "Arial", "Helvetica Neue", sans-serif;
}

.font-poppins {
  font-family: "Poppins", "Arial", "Helvetica Neue", sans-serif;
}

.row {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
}

.row-space {
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
  -moz-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}

.col-2 {
  width: -webkit-calc((100% - 30px) / 2);
  width: -moz-calc((100% - 30px) / 2);
  width: calc((100% - 30px) / 2);
}

@media (max-width: 767px) {
  .col-2 {
    width: 100%;
  }
}

html {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

* {
  padding: 0;
  margin: 0;
}

*, *:before, *:after {
  -webkit-box-sizing: inherit;
  -moz-box-sizing: inherit;
  box-sizing: inherit;
}

body,
h1, h2, h3, h4, h5, h6,
blockquote, p, pre,
dl, dd, ol, ul,
figure,
hr,
fieldset, legend {
  margin: 0;
  padding: 0;
}

li > ol,
li > ul {
  margin-bottom: 0;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

fieldset {
  min-width: 0;
  border: 0;
}

button {
  outline: none;
  background: none;
  border: none;
}

.page-wrapper {
  min-height: 100vh;
}

body {
  font-family: "Poppins", "Arial", "Helvetica Neue", sans-serif;
  font-weight: 400;
  font-size: 14px;
}

h1, h2, h3, h4, h5, h6 {
  font-weight: 400;
}

h1 {
  font-size: 36px;
}

h2 {
  font-size: 30px;
}

h3 {
  font-size: 24px;
}

h4 {
  font-size: 18px;
}

h5 {
  font-size: 15px;
}

h6 {
  font-size: 13px;
}

.bg-blue {
  background: #2c6ed5;
}

.bg-red {
  background: #fa4251;
}

.bg-gra-01 {
  background: -webkit-gradient(linear, left bottom, left top, from(blue), to(pink));
  background: -webkit-linear-gradient(bottom, blue 0%, pink 100%);
  background: -moz-linear-gradient(bottom, blue 0%, pink 100%);
  background: -o-linear-gradient(bottom, blue 0%, pink 100%);
  background: linear-gradient(to top, blue 0%, pink 100%);
}

.bg-gra-02 {
  background: -webkit-gradient(linear, left bottom, right top, from(blue), to(pink));
  background: -webkit-linear-gradient(bottom left, blue 0%, pink 100%);
  background: -moz-linear-gradient(bottom left, blue 0%, pink 100%);
  background: -o-linear-gradient(bottom left, blue 0%, pink 100%);
  background: linear-gradient(to top right, blue 0%, pink 100%);
}

.p-t-100 {
  padding-top: 100px;
}

.p-t-130 {
  padding-top: 130px;
}

.p-t-180 {
  padding-top: 180px;
}

.p-t-20 {
  padding-top: 20px;
}

.p-t-15 {
  padding-top: 15px;
}

.p-t-10 {
  padding-top: 10px;
}

.p-t-30 {
  padding-top: 30px;
}

.p-b-100 {
  padding-bottom: 100px;
}

.m-r-45 {
  margin-right: 45px;
}

.wrapper {
  margin: 0 auto;
}

.wrapper--w960 {
  max-width: 960px;
}

.wrapper--w780 {
  max-width: 780px;
}

.wrapper--w680 {
  max-width: 680px;
}

.btn {
  display: inline-block;
  line-height: 50px;
  padding: 0 50px;
  -webkit-transition: all 0.4s ease;
  -o-transition: all 0.4s ease;
  -moz-transition: all 0.4s ease;
  transition: all 0.4s ease;
  cursor: pointer;
  font-size: 18px;
  color: #fff;
  font-family: "Poppins", "Arial", "Helvetica Neue", sans-serif;
}

.btn--radius {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}

.btn--radius-2 {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}

.btn--pill {
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
}

.btn--green {
  background: #57b846;
}

.btn--green:hover {
  background: #4dae3c;
}

.btn--blue {
  background: #4272d7;
}

.btn--blue:hover {
  background: #3868cd;
}

td.active {
  background-color: #2c6ed5;
}

input[type="date" i] {
  padding: 14px;
}

.table-condensed td, .table-condensed th {
  font-size: 14px;
  font-family: "Roboto", "Arial", "Helvetica Neue", sans-serif;
  font-weight: 400;
}

.daterangepicker td {
  width: 40px;
  height: 30px;
}

.daterangepicker {
  border: none;
  -webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  display: none;
  border: 1px solid #e0e0e0;
  margin-top: 5px;
}

.daterangepicker::after, .daterangepicker::before {
  display: none;
}

.daterangepicker thead tr th {
  padding: 10px 0;
}

.daterangepicker .table-condensed th select {
  border: 1px solid #ccc;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  font-size: 14px;
  padding: 5px;
  outline: none;
}

input {
  outline: none;
  margin: 0;
  border: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  width: 100%;
  font-size: 14px;
  font-family: inherit;
}

.input--style-4 {
  line-height: 50px;
  background: #fafafa;
  -webkit-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -moz-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  padding: 0 20px;
  font-size: 16px;
  color: #666;
  -webkit-transition: all 0.4s ease;
  -o-transition: all 0.4s ease;
  -moz-transition: all 0.4s ease;
  transition: all 0.4s ease;
}

.input--style-4::-webkit-input-placeholder {
  color: #666;
}

.input--style-4:-moz-placeholder {
  color: #666;
  opacity: 1;
}

.input--style-4::-moz-placeholder {
  color: #666;
  opacity: 1;
}

.input--style-4:-ms-input-placeholder {
  color: #666;
}

.input--style-4:-ms-input-placeholder {
  color: #666;
}

.label {
  font-size: 16px;
  color: #555;
  text-transform: capitalize;
  display: block;
  margin-bottom: 5px;
}

.radio-container {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
  font-size: 16px;
  color: #666;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

.radio-container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

.radio-container input:checked ~ .checkmark {
  background-color: #e5e5e5;
}

.radio-container input:checked ~ .checkmark:after {
  display: block;
}

.radio-container .checkmark:after {
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  width: 12px;
  height: 12px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  background: #57b846;
}

.checkmark {
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  left: 0;
  height: 20px;
  width: 20px;
  background-color: #e5e5e5;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  -webkit-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -moz-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
}

.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

.input-group {
  position: relative;
  margin-bottom: 22px;
}

.input-group-icon {
  position: relative;
}

.input-icon {
  position: absolute;
  font-size: 18px;
  color: #999;
  right: 18px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  cursor: pointer;
}

.select--no-search .select2-search {
  display: none !important;
}

.rs-select2 .select2-container {
  width: 100% !important;
  outline: none;
  background: #fafafa;
  -webkit-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -moz-box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.08);
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}

.rs-select2 .select2-container .select2-selection--single {
  outline: none;
  border: none;
  height: 50px;
  background: transparent;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__rendered {
  line-height: 50px;
  padding-left: 0;
  color: #555;
  font-size: 16px;
  font-family: inherit;
  padding-left: 22px;
  padding-right: 50px;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow {
  height: 50px;
  right: 20px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -moz-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -moz-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow b {
  display: none;
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow:after {
  font-family: "Material-Design-Iconic-Font";
  content: '\f2f9';
  font-size: 24px;
  color: #999;
  -webkit-transition: all 0.4s ease;
  -o-transition: all 0.4s ease;
  -moz-transition: all 0.4s ease;
  transition: all 0.4s ease;
}

.rs-select2 .select2-container.select2-container--open .select2-selection--single .select2-selection__arrow::after {
  -webkit-transform: rotate(-180deg);
  -moz-transform: rotate(-180deg);
  -ms-transform: rotate(-180deg);
  -o-transform: rotate(-180deg);
  transform: rotate(-180deg);
}

.select2-container--open .select2-dropdown--below {
  border: none;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  -webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  border: 1px solid #e0e0e0;
  margin-top: 5px;
  overflow: hidden;
}

.select2-container--default .select2-results__option {
  padding-left: 22px;
}

.title {
  font-size: 24px;
  color: #525252;
  font-weight: 400;
  margin-bottom: 40px;
}

.card {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  background: #fff;
}

.card-4 {
  background: #fff;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
}

.card-4 .card-body {
  padding: 57px 65px;
  padding-bottom: 65px;
}

@media (max-width: 767px) {
  .card-4 .card-body {
    padding: 50px 40px;
  }
}

    </style>
</head>
<body>
<div class="heading">
        <h1>
            Welcome, Admin
        </h1>

    </div>
<div class="container-fluid">
        <div class="col-md-8">
            <div class="row">
            <center>
                <table class="table table-responsive" >
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">S.No.</th>
                        <th scope="col">Vessel No.</th>
                        <th scope="col">Vessel Name</th>
                        <th scope="col">Vessel Owner</th>
                        <th scope="col">Owner Phone</th>
                        <th scope="col">Agency Name</th>
                        <th scope="col">Agent Name</th>
                        <th scope="col">Agency Email</th>
                        <th scope="col">Agent Phone</th>
                        <th scope="col">Agency City</th>
                        <th scope="col">Agency Pincode</th>
                        <th scope="col">From</th>
                        <th scope="col">To</th>
                        <th scope="col">Departure Date</th>
                        <th scope="col">Departure Time</th>
                        <th scope="col">Arrival Date</th>
                        <th scope="col">Arrival Time</th>
                        <th scope="col">Vessel Length</th>
                        <th scope="col">Freight Type</th>
                        <th scope="col">Port</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                    <% 
					ArrayList<BookBerth> list = user_database_operations.readData();
					for(BookBerth book:list){
				        out.print("<tr>");
				          out.print("<th scope='row'>1</th>");
				          out.print("<td>"+book.getVesselNo()+"</td>");
				          out.print("<td>"+book.getVesselName()+"</td>");
				          out.print("<td>"+book.getVesselOwner()+"</td>");
				          out.print("<td>"+book.getOwnerPhone()+"</td>");
				          out.print("<td>"+book.getAgencyName()+"</td>");
				          out.print("<td>"+book.getAgentName()+"</td>");
				          out.print("<td>"+book.getAgencyEmail()+"</td>");
				          out.print("<td>"+book.getAgentPhone()+"</td>");
				          out.print("<td>"+book.getAgentCity()+"</td>");
				          out.print("<td>"+book.getAgencyPincode()+"</td>");
				          out.print("<td>"+book.getFrom()+"</td>");
				          out.print("<td>"+book.getTo()+"</td>");
				          out.print("<td>"+book.getDeptDate()+"</td>");
				          out.print("<td>"+book.getDeptTime()+"</td>");
				          out.print("<td>"+book.getArrivDate()+"</td>");
				          out.print("<td>"+book.getArrivTime()+"</td>");
				          out.print("<td>"+book.getLength()+"</td>");
				          out.print("<td>"+book.getType()+"</td>");
				          out.print("<td>"+book.getPort()+"</td>");
				          out.print("<td>"+book.getStatus()+"</td>");
				        out.print("</tr>");
					}
				%>
						</tbody>
                  </table>
                  
            </div>
        </div>
    </div>
<div class="container">
		<div class="card bg-light">
			<div class="card-body mx-auto" style="max-width: 500px;">
				<h1 class="card-title mt-3 text-center">Request Approval</h1>
				<br>
				<form id="form" action="approve" method="POST">
					<div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Vessel No.</label>
                                    <input class="input--style-4" type="text" name="vesselno">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Vessel Name</label>
                                    <input class="input--style-4" type="text" name="vesselname">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">From</label>
                                    <input class="input--style-4" type="text" name="from">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">To</label>
                                    <input class="input--style-4" type="text" name="to">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Departure Date</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="deptdate">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Departure Time</label>
                                    <input class="input--style-4" type="time" name="depttime">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Arrival Date</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="arrivdate">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Arrival Time</label>
                                    <input class="input--style-4" type="time" name="arrivtime">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Vessel Length</label>
                                    <input class="input--style-4" type="text" name="length">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">Freight Type</label>
                                    <input class="input--style-4" type="text" name="type">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            
                            <label class="label">Port</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="port">
                                    <option disabled="disabled" selected="selected">Choose Port</option>
                                    <option>Kaattupalli</option>
                                    <option>Ennore</option>
                                    <option>Tuticorin</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        	
                        	
                            <label class="label">Status</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="status">
                                    <option disabled="disabled" selected="selected">Update Status</option>
                                    <option>approved</option>
                                    <option>rejected</option>
                                </select>
                                <div class="select-dropdown"></div>
                            
                        </div>
                        </div>
                        <div class="p-t-30">
                            <div class="row row-space">
                                <button class="btn btn--radius-2 btn--green" type="submit">Submit</button>
                                <button class="btn btn--radius-2 btn--blue" type="reset">Clear</button>
                            </div>
                        </div>
				</form>
			</div>
		</div>

	</div>
	<script>
        (function ($) {
    'use strict';
    
    try {
        $('.js-datepicker').daterangepicker({
            "singleDatePicker": true,
            "showDropdowns": true,
            "autoUpdateInput": false,
            locale: {
                format: 'DD/MM/YYYY'
            },
        });
    
        var myCalendar = $('.js-datepicker');
        var isClick = 0;
    
        $(window).on('click',function(){
            isClick = 0;
        });
    
        $(myCalendar).on('apply.daterangepicker',function(ev, picker){
            isClick = 0;
            $(this).val(picker.startDate.format('DD/MM/YYYY'));
    
        });
    
        $('.js-btn-calendar').on('click',function(e){
            e.stopPropagation();
    
            if(isClick === 1) isClick = 0;
            else if(isClick === 0) isClick = 1;
    
            if (isClick === 1) {
                myCalendar.focus();
            }
        });
    
        $(myCalendar).on('click',function(e){
            e.stopPropagation();
            isClick = 1;
        });
    
        $('.daterangepicker').on('click',function(e){
            e.stopPropagation();
        });
    
    
    } catch(er) {console.log(er);}
    
    try {
        var selectSimple = $('.js-select-simple');
    
        selectSimple.each(function () {
            var that = $(this);
            var selectBox = that.find('select');
            var selectDropdown = that.find('.select-dropdown');
            selectBox.select2({
                dropdownParent: selectDropdown
            });
        });
    
    } catch (err) {
        console.log(err);
    }
    

})(jQuery);
    </script>
</body>
</html>