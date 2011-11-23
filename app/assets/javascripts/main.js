function scrollbarPresent() {
  var docHeight = $(document).height();
  var scroll    = $(window).height() + $(window).scrollTop();
  return (docHeight >= scroll);
}

function swapStylesheet(url) {
  document.getElementById('stylesheet').href = url;
}

(function( $ ){
  $.fn.tooltip = function() {
    this.find('img').each(function(){
      if($(this).attr('alt') != ""){
        $('<div class="tooltip" style="display: none">' + $(this).attr('alt') + '</div>').insertBefore($(this));
        $(this).mouseenter(function(){$(this).prev('.tooltip').slideDown().delay(5000).fadeOut()});
      }
    });
  };
})( jQuery );


$(document).ready(function(){
  // reservations
  $('#make_reservation').click(function(){$('#opentable_form').fadeToggle(); clicky.goal('644'); return false;});
  $('#OT_Find_a_Table').click(function(){clicky.goal('643');})
  
  // navigation (hide others when hovering)
  $(".nav ul > li").hover(function(){$(this).siblings().addClass("hide_subnav")}, function(){$(this).siblings().removeClass("hide_subnav")});
  
  // hide subnav on narrow pages
  if ($(document).width() < 1145)
    $('body').addClass('narrow');
});