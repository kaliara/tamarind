function scrollbarPresent() {
  var docHeight = $(document).height();
  var scroll    = $(window).height() + $(window).scrollTop();
  return (docHeight >= scroll);
}

$(document).ready(function(){
   
   $('#make_reservation').click(function(){$('#opentable_form').fadeToggle(); return false;});
});