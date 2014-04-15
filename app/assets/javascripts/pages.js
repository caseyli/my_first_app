$(function(){   
  $(".red-bubble-link").click(redBubbleLinkClicked);
  
  $("#close-link-results").click(function(){
    $("#link-results").slideUp(400);
    return false;
  });

  $(".contact-link").click(presentContactModalDialog);
  $(".contact-submit-link").click(submitContactForm);
});

function presentContactModalDialog() {
  $(".contact-modal-dialog-bg").fadeIn(200);
  return false;
}

function submitContactForm() {

  var first_name = $("#contact_first_name").val();
  var last_name = $("#contact_last_name").val();
  var email = $("#contact_email").val();
  var message = $("#contact_message").val();

  $.ajax({ 
    url : "/contact",
    type : "POST",
    dataType : "JSON",
    data : { first_name : first_name, 
             last_name : last_name, 
             email : email, 
             message : message },
    success: function(data, textStatus, jqXHR){
      $(".contact-modal-dialog-bg").fadeOut(200);
    },
    error: function(jqXHR, textStatus, errorThrown){
      alert("Error!");
    }
  });

  return false;
}


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