function scrollbarPresent() {
  var docHeight = $(document).height();
  var scroll    = $(window).height() + $(window).scrollTop();
  return (docHeight >= scroll);
}

$(document).ready(function(){
   $('#make_reservation').click(function(){$('#opentable_form').fadeToggle(); var clicky_custom = {};clicky_custom.goal = { name: 'clicked Make Reservation' }; return false;});
   $('#OT_Find_a_Table').click(function(){var clicky_custom = {};clicky_custom.goal = { name: 'clicked Find Table' };})
});