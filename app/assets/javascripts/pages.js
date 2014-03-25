$(function(){   
  $(".red-bubble-link").click(redBubbleLinkClicked);
  
  $("#close-link-results").click(function(){
    $("#link-results").slideUp(400);
    return false;
  });
});


function redBubbleLinkClicked() {
  var message = $(this).attr("message");
  $("#link-results .message").html(message);
  $("#link-results").slideDown(400);
  return false;
}