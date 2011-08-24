function scrollbarPresent() {
  var docHeight = $(document).height();
  var scroll    = $(window).height() + $(window).scrollTop();
  return (docHeight >= scroll);
}