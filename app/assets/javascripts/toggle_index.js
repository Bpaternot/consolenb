  $(".card-link").click(function(){
  var targetId = $(this).attr('id');
  $("#map").addClass("hidden");
  $(".book-form").addClass("hidden");
  $("#console-" + targetId + "-details").removeClass("hidden");

  $(".target-for-scroll-index").removeClass("scroll-authorized");
  $(".target-for-scroll-index").addClass("position-fixed-for-index");
  $(".target-for-offset").addClass("col-md-offset-6");
  $(".target-for-scroll-details").addClass("scroll-authorized");

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
  $(".target-for-scroll-index").addClass("scroll-authorized");
  $(".target-for-scroll-details").removeClass("scroll-authorized");

  $(".target-for-scroll-index").addClass("scroll-authorized");
  $(".target-for-scroll-index").removeClass("position-fixed-for-index");
  $(".target-for-offset").removeClass("col-md-offset-6");
  $(".target-for-scroll-details").removeClass("scroll-authorized");

});



    // $(this).removeClass("product");
    // $(this).addClass("product-expand");
