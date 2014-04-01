$(function(){   
  $(".red-bubble-link").click(redBubbleLinkClicked);
  
  $("#close-link-results").click(function(){
    $("#link-results").slideUp(400);
    return false;
  });
});


function redBubbleLinkClicked() {
  var message = $(this).attr("message");

  /* MAKING AN AJAX REQUEST */
  $.ajax({ 
    url: "/news_posts/1", 
    dataType: "JSON", 
    success: function(data, status, jqXHR){
      message = data.id + " / " + data.title;
      $("#link-results .message").html(message);
      $("#link-results").slideDown(400);
    }, 
    error: function(jqXHR, status, errorThrown) {
      alert("Error!");
    }
  });

 
  return false;
}