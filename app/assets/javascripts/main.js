function scrollbarPresent() {
  var docHeight = $(document).height();
  var scroll    = $(window).height() + $(window).scrollTop();
  return (docHeight >= scroll);
}

$(document).ready(function(){
   $('#make_reservation').click(function(){$('#opentable_form').fadeToggle(); clicky.log('/reservations/new#js','Make a Reservation'); return false;});
   $('#OT_Find_a_Table').click(function(){clicky.goal('643');})
});