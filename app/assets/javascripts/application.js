// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require popper
//= require bootstrap
//= require lightbox
//= require activestorage
//= require_tree .

$(document).ready(function(){
  lightbox.init();

  $(document).on('click', '.navbar-dark .navbar-nav .nav-link', function(){
    if($('button.navbar-toggler').is(':visible')) {
      $('button.navbar-toggler').trigger('click');
    }
  })

  $(".carousel").swipe({
    swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
      if (direction == 'left') $('.carousel-control-next').click();
      if (direction == 'right') $('.carousel-control-prev').click();
    },
    allowPageScroll:"vertical"
  });

  var availableTags = [
    "ActionScript",
    "AppleScript",
    "Asp",
    "BASIC",
    "C",
    "C++",
    "Clojure",
    "COBOL",
    "ColdFusion",
    "Erlang",
    "Fortran",
    "Groovy",
    "Haskell",
    "Java",
    "JavaScript",
    "Lisp",
    "Perl",
    "PHP",
    "Python",
    "Ruby",
    "Scala",
    "Scheme"
  ];

  $( "#datepicker" ).datepicker({
    inline: true
  });

});