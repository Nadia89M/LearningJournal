// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require popper
//= require bootstrap
//= require twitter/bootstrap

$(document).ready(function() {
  $(".navbar .dropdown").hover(
    function() {
      $(this)
        .find(".dropdown-menu")
        .first()
        .stop(true, true)
        .delay(250)
        .slideDown();
    },
    function() {
      $(this)
        .find(".dropdown-menu")
        .first()
        .stop(true, true)
        .delay(100)
        .slideUp();
    }
  );

  $("#search-item").keyup(function() {
    var value = $(this)
      .val()
      .toLowerCase()
      .trim();
    var items = $(".resource-item");
    items.each(function() {
      var type = $(this)
        .text()
        .toLowerCase()
        .trim();
      if (!type.includes(value)) {
        $(this)
          .parent()
          .addClass("remove");
      } else {
        $(this)
          .parent()
          .removeClass("remove");
      }
    });
  });
});

   $(document).ready( function() {
       $("#search-item").focus(function(){
        $(location).attr("href", "/resources");
       });
   });