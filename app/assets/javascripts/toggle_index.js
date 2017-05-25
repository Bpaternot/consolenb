$(".card-link").click(function(){
  var consoleId = $(this).attr('id');
  if ($("#" + consoleId + "-details").hasClass("active")) {
    $("#map").removeClass("hidden");
    $("#" + consoleId + "-details").toggleClass("hidden");
    $("#" + consoleId + "-details").toggleClass("active");
  } else {
    $("#map").addClass("hidden");
    $(".active").toggleClass("hidden");
    $(".active").toggleClass("active");
    $("#" + consoleId + "-details").toggleClass("hidden");
    $("#" + consoleId + "-details").toggleClass("active");
  }
});


