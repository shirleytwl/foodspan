$(document).ready(function () {
  $('.nav-open, .nav-close, .nav-overlay').click(function () {
    $('#collapsibleNavbar').toggleClass('show');
    $(".nav-overlay").fadeToggle();
  });
});