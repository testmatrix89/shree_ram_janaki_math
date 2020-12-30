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
//= require 'custom/time_display'

$(document).ready(function(){
  lightbox.init();

  $(document).on('click', '.navbar-dark .navbar-nav .nav-link', function(){
    if($('button.navbar-toggler').is(':visible')) {
      $('button.navbar-toggler').trigger('click');
    }
    if(this.dataset.target) {
      localStorage.setItem('navTarget', this.dataset.target);
      if($('#' + this.dataset.target).length > 0) {
        navTarget(this.dataset.target)
      }else {
        location.href = '/'
      }
    }
  });

  suvicharReadmoreHideShow();

  $('.suvichar-content .read-more').on('click', function(){
    if( $('.svr-item').height() <= 40 ){
      $('.svr-item').animate({ height: $('.svr-item').get(0).scrollHeight}, 'swing')
      $(this).html('↑↑↑')
    }else {
      $('.svr-item').animate({ height: 36}, 500)
      $(this).html('और पढ़े ↓')
    }
  })

  setTimeout(function(){
    if(localStorage.getItem('navTarget')) {
      navTarget(localStorage.getItem('navTarget'))
    }
  }, 300);

  $(".carousel").swipe({
    swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
      if (direction == 'left') $('.carousel-control-next').click();
      if (direction == 'right') $('.carousel-control-prev').click();
    },
    allowPageScroll:"vertical"
  });

});

function navTarget(target){
  if(!target){
    target = localStorage.getItem('navTarget');
  }
  var body = $('html, body');
  body.stop().animate({scrollTop: ($('#' + target).offset().top - 40) }, 500, 'swing', function() { 
    localStorage.removeItem('navTarget');
  });
}

function suvicharReadmoreHideShow() {
  if($('.svr-item').get(0).scrollHeight > 39){
    $('.suvichar-content .read-more').show()
    $('.suvichar-content').addClass('btm-space')
  }else {
    $('.suvichar-content .read-more').hide()
  }
}