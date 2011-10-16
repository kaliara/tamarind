function scrollbarPresent() {
  var docHeight = $(document).height();
  var scroll    = $(window).height() + $(window).scrollTop();
  return (docHeight >= scroll);
}

$(document).ready(function(){
  // reservations
  $('#make_reservation').click(function(){$('#opentable_form').fadeToggle(); clicky.goal('644'); return false;});
  $('#OT_Find_a_Table').click(function(){clicky.goal('643');})
  
  // hide subnav on narrow pages
  if ($(document).width() < 1145)
    $('body').addClass('narrow');
});