$(document).on("turbolinks:load", function() {
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

  $("#resource_project_id").select2();


  if($(location).attr('href') == 'https://nadiamohamed-learningjournal.herokuapp.com/' || $(location).attr('href') == 'https://nadiamohamed-learningjournal.herokuapp.com/resources'){
    $('#search-form').css('display', 'block');
  };

});



