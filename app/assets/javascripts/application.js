// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

// set sort_by_picker
if ( window.location.toString().indexOf("<%= shops_wifi_down_path %>") > 0) {
  $( '#sort_by_picker' ).val("download");
}
if ( window.location.toString().indexOf("<%= shops_power_path %>") > 0) {
  $( '#sort_by_picker' ).val("power");
}
if ( window.location.toString().indexOf("<%= shops_noise_path %>") > 0) {
  $( '#sort_by_picker' ).val("noise");
}
// change event handler for sort_by_picker
$( '#sort_by_picker' ).change(function() {
  var sort_value = $(this).val();
  if (sort_value === "upload") {
    window.location = "<%= shops_wifi_up_path %>";
  }
  if (sort_value === "download") {
    window.location = "<%= shops_wifi_down_path %>";
  }
  if (sort_value === "power") {
    window.location = "<%= shops_power_path %>";
  }
  if (sort_value === "noise") {
    window.location = "<%= shops_noise_path %>";
  }
});
