$(".card-link").click(function(){
  var targetId = $(this).attr('id');
  $("#map").addClass("hidden");
  $(".book-form").addClass("hidden");
  $("#console-" + targetId + "-details").removeClass("hidden");



  $(".product-expand").removeClass("product-expand").addClass("product");
  $(".product-controls").removeClass("hidden");

  $("#product-" + targetId).removeClass("product");
  $("#product-" + targetId).addClass("product-expand");
  $("#product-controls-" + targetId).addClass("hidden");

});

$(".cross").click(function(){
  $("#map").removeClass("hidden");
  $(".product-expand").removeClass("product-expand").addClass("product");
  $(".product-controls").removeClass("hidden");
});


    // $(this).removeClass("product");
    // $(this).addClass("product-expand");
