$(document).ready(function(){
  setInterval(function(){
    $('.time-box').html(formatAMPM());
  }, 1000)

  setTimeout(function(){
    setTimeBoxPos();
    $(window).on('resize', setTimeBoxPos);
  }, 1010)

})

function setTimeBoxPos() {
  var posValue = 222;
  if($('button.navbar-toggler').is(':visible')) {
    posValue = $('button.navbar-toggler').offset().left - $('.time-box').width();
  }else{
    var contnr = $(window).width() - ($('ul.navbar-nav:not(.mr-auto)').width() + $('#navbarNavDropdown').offset().left);
    posValue =  contnr - ($('.time-box').width() / 4);
  }
  $('.time-box').css({'left': (posValue - 10) + 'px'})
}


function formatAMPM() {
  var d = new Date(),
    seconds = d.getSeconds().toString().length == 1 ? '0'+d.getSeconds() : d.getSeconds(),
    minutes = d.getMinutes().toString().length == 1 ? '0'+d.getMinutes() : d.getMinutes(),
    hours = d.getHours().toString().length == 1 ? '0'+d.getHours() : d.getHours(),
    //ampm = timeTense(d), //d.getHours() >= 12 ? 'pm' : 'am',
    //months = ['पौष','माघ','फाल्गुन','चैत्र','वैशाख','ज्येष्ठ','आषाढ़','श्रावण','भाद्रपद','आश्विन','कार्तिक','मार्गशीर्ष'],
    months = ['जनवरी','फरवरी','मार्च','अप्रैल','मई','जून','जुलाई','अगस्त','सितम्बर','अक्टूबर','नवम्बर','दिसम्बर'],
    days = ['रविवार','सोमवार','मंगलवार','बुधवार','ब्रहस्पतिवार','शुक्रवार','शनिवार'];
  return '<span class="day">' + days[d.getDay()] + '</span> <span class="date">' + d.getDate() + '</span> <span class="month">' + months[d.getMonth()] + '</span> <span class="year">' + d.getFullYear() +'</span> <span class="times-kaal"><span class="times">' + timeConvert(hours + ':' + minutes + ':' + seconds) + '</span> <span class="time-kaal">' + timeTense(d) + '</span></span>';
}

function timeTense(date) {
  var time = 'सुबह'
  if(date.getHours() < 12 ) {
    time = 'सुबह'
  }else if(date.getHours() >= 12 && date.getHours() < 16) {
    time = 'दोपहर' 
  }else if(date.getHours() >= 16 && date.getHours() < 20) {
    time = 'संध्या' 
  }else {
    time = 'रात्रि'
  }
  return time;
}

function timeConvert (time) {
  time = time.toString ().match (/^([01]\d|2[0-3])(:)([0-5]\d)(:[0-5]\d)?$/) || [time];
  if (time.length > 1) { // If time format correct
    time = time.slice (1);  // Remove full string match value
    //time[5] = +time[0] < 12 ? 'AM' : 'PM'; // Set AM/PM
    time[0] = +time[0] % 12 || 12; // Adjust hours
  }
  return time.join(''); // return adjusted time or original string
}

// var app = {
//   SiteControl:{}
// };

// (function(exports){
//   function SiteControls(id, parent, value) {
//     this.id = id;
//     this.parentElement = parent;
//     this.value = value;
//   }

//   SiteControls.prototype = {
//     checkTimes: function() {
//       var timeContainer = this.parentElement;
//       var times = setInterval(function(){
//         var time = new Date()
//         timeContainer.html(time)
//       }, 1000)
//       return times
//     }
//   }
//   exports.Control = SiteControls;
// })(this.app.SiteControl);

// var Controls = new app.SiteControl.Control('Text', $('.time-box'), 'Prince')