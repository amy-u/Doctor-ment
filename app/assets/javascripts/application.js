//= require jquery
//= require bootstrap-sprockets

//= require bootstrap-datepicker

//= require bootstrap.min
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.en-GB.js

$(document).ready(function(){
    $('.datepicker').datepicker({
      format: 'mm/dd/yyyy'
    });
  });