$(document).ready(function(){
   $('.time-box').html(formatAMPM());

  setInterval(function(){
    $('.time-box').html(formatAMPM());
  }, 1000)

  setTimeout(function(){
    setTimeBoxPos();
  }, 1);

  $(window).on('scroll resize', setTimeBoxPos);

})

function setTimeBoxPos() {
  var posValue = 222;
  if($('button.navbar-toggler').is(':visible')) {
    posValue = $('button.navbar-toggler').offset().left - $('.time-box').width();
  }else{
    var contnr = $(window).width() - ($('ul.navbar-nav:not(.mr-auto)').width() + $('#navbarNavDropdown').offset().left);
    posValue =  contnr - ($('.time-box').width() / 4);
  }
  $('.time-box').css({'left': (posValue - 8) + 'px', 'display': 'flex'})
}

function formatAMPM() {
  var d = new Date(),
    seconds = d.getSeconds().toString().length == 1 ? '0'+d.getSeconds() : d.getSeconds(),
    minutes = d.getMinutes().toString().length == 1 ? '0'+d.getMinutes() : d.getMinutes(),
    hours = d.getHours().toString().length == 1 ? '0'+d.getHours() : d.getHours(),
    dates = d.getDate().toString().length == 1 ? '0'+d.getDate() : d.getDate(),
    months = ['जनवरी','फरवरी','मार्च','अप्रैल','मई','जून','जुलाई','अगस्त','सितम्बर','अक्टूबर','नवम्बर','दिसम्बर'],
    days = ['रविवार','सोमवार','मंगलवार','बुधवार','ब्रहस्पतिवार','शुक्रवार','शनिवार'];
  return '<div><span class="day">' + days[d.getDay()] + '</span> <span class="date"> ' + d.getDate() + '</span> <span class="month">' + months[d.getMonth()] + '</span> <span class="year">' + d.getFullYear() +' </span> <span class="times-kaal"><span class="time-kaal">' + timeTense(d) + '</span> <span class="times">' + timeConvert(hours + ':' + minutes + ':' + seconds) + '</span><span class="tithi"> ' + todayTithiPanchang(d.getMonth(), dates) + '</span></span></div>';
}

function timeTense(date) {
  var time = 'प्रातः काल'
  if(date.getHours() >= 0 && date.getHours() < 3 ) {
    time = 'मध्य रात्रि'
  }else if(date.getHours() >=3 && date.getHours() < 6) {
    time = 'उषा काल' 
  }else if(date.getHours() >= 6 && date.getHours() < 12) {
    time = 'प्रातः काल' 
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

function todayTithiPanchang(month, date){
  var dates = panchang[month]
  var todayTithi = dates.find((d) => d.date.includes(date))
  return todayTithi ? todayTithi.name : '';
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

var panchang = [
  [
  {
      date: "शनिवार 02 जनवरी",
      name: "संकष्टी चतुर्थी"
  }, {
      date: "शनिवार 09 जनवरी",
      name: "सफला एकादशी"
  }, {
      date: "रविवार 10 जनवरी",
      name: "प्रदोष व्रत (कृष्ण)"
  }, {
      date: "सोमवार 11 जनवरी",
      name: "मासिक शिवरात्रि"
  }, {
      date: "बुधवार 13 जनवरी",
      name: "पौष अमावस्या"
  }, {
      date: "गुरुवार 14 जनवरी",
      name: "पोंगल, उत्तरायण , मकर संक्रांति"
  }, {
      date: "रविवार 24 जनवरी",
      name: "पौष पुत्रदा एकादशी"
  }, {
      date: "मंगलवार 26 जनवरी",
      name: "प्रदोष व्रत (शुक्ल)"
  }, {
      date: "गुरुवार 28 जनवरी",
      name: "पौष पूर्णिमा व्रत"
  }, {
      date: "रविवार 31 जनवरी",
      name: "संकष्टी चतुर्थी"
  }],
  [{
      date: "रविवार 07 फरवरी",
      name: " षटतिला एकादशी"
  }, {
      date: "मंगलवार 09 फरवरी",
      name: "प्रदोष व्रत(कृष्ण)"
  }, {
      date: "बुधवार 10 फरवरी",
      name: "मासिक शिवरात्रि"
  }, {
      date: "गुरुवार 11 फरवरी",
      name: "माघ अमावस्या"
  }, {
      date: "शुक्रवार 12 फरवरी",
      name: "कुम्भ संक्रांति"
  }, {
      date: "मंगलवार 16 फरवरी",
      name: "बसंत पंचमी (सरस्वती पूजा)"
  }, {
      date: "मंगलवार 23 फरवरी",
      name: "जया एकादशी"
  }, {
      date: "बुधवार 24 फरवरी",
      name: "प्रदोष व्रत (शुक्ल)"
  }, {
      date: "शनिवार 27 फरवरी",
      name: " माघ पूर्णिमा"
  }],
  [{
      date: "मंगलवार 02 मार्च",
      name: "संकष्टी चतुर्थी"
  }, {
      date: "मंगलवार 09 मार्च",
      name: "विजया एकादशी"
  }, {
      date: "बुधवार 10 मार्च",
      name: "प्रदोष व्रत (कृष्ण)"
  }, {
      date: "गुरुवार 11 मार्च",
      name: "महाशिवरात्रि , मासिक शिवरात्रि"
  }, {
      date: "शनिवार 13 मार्च",
      name: "फाल्गुन अमावस्या"
  }, {
      date: " रविवार 14 मार्च",
      name: " मीन संक्रांति"
  }, {
      date: "गुरुवार 25 मार्च",
      name: "आमलकी एकादशी"
  }, {
      date: " शुक्रवार 26 मार्च",
      name: " प्रदोष व्रत (शुक्ल)"
  }, {
      date: "रविवार 28 मार्च",
      name: "होलिका दहन , फाल्गुन पूर्णिमा व्रत"
  }, {
      date: "सोमवार 29 मार्च",
      name: "होली"
  }, {
      date: "बुधवार 31 मार्च",
      name: "संकष्टी चतुर्थी"
  }, ],
  [{
      date: "बुधवार 07 अप्रैल",
      name: "पापमोचिनी एकादशी"
  }, {
      date: "शुक्रवार 09 अप्रैल",
      name: "प्रदोष व्रत (कृष्ण)"
  }, {
      date: "शनिवार 10अप्रैल",
      name: "मासिक शिवरात्रि"
  }, {
      date: "सोमवार 12 अप्रैल",
      name: "चैत्र अमावस्या"
  }, {
      date: "मंगलवार 13 अप्रैल",
      name: "चैत्र नवरात्रि , उगाडी , घटस्थापना , गुड़ी पड़वा"
  }, {
      date: "बुधवार 14 अप्रैल",
      name: "चेटी चंड , मेष संक्रांति"
  }, {
      date: "बुधवार 21 अप्रैल",
      name: "राम नवमी"
  }, {
      date: "गुरुवार 22 अप्रैल",
      name: " चैत्र नवरात्रि पारणा"
  }, {
      date: "शुक्रवार 23 अप्रैल",
      name: "कामदा एकादशी"
  }, {
      date: " शनिवार 24 अप्रैल",
      name: "प्रदोष व्रत (शुक्ल)"
  }, {
      date: " मंगलवार 27 अप्रैल",
      name: " हनुमान जयंती,चैत्र पूर्णिमा व्रत"
  }, {
      date: " शुक्रवार 30 अप्रैल",
      name: " संकष्टी चतुर्थी "
  }],
  [{
      date: "शुक्रवार 07 मई",
      name: "वरुथिनी एकादशी"
  }, {
      date: "शनिवार 08 मई",
      name: "प्रदोष व्रत(कृष्ण)"
  }, {
      date: "रविवार 09 मई",
      name: "मासिक शिवरात्रि"
  }, {
      date: "मंगलवार 11 मई",
      name: "वैशाख अमावस्या "
  }, {
      date: "शुक्रवार 14 मई",
      name: " अक्षय तृतीया, वृष संक्रांति"
  }, {
      date: "रविवार 23 मई",
      name: "मोहिनी एकादशी"
  }, {
      date: "सोमवार 24 मई",
      name: "प्रदोष व्रत (शुक्ल)"
  }, {
      date: "बुधवार 26 मई",
      name: "वैशाख पूर्णिमा व्रत"
  }, {
      date: "शनिवार 29 मई",
      name: " संकष्टी चतुर्थी"
  }],
  [{
      date: "रविवार 06 जून",
      name: "अपरा एकादशी"
  }, {
      date: "सोमवार 07 जून",
      name: "प्रदोष व्रत (कृष्ण)"
  }, {
      date: "मंगलवार 08 जून",
      name: "मासिक शिवरात्रि "
  }, {
      date: "गुरुवार 10 जून",
      name: "ज्येष्ठ अमावस्या "
  }, {
      date: "मंगलवार 15 जून",
      name: "मिथुन संक्रांति"
  }, {
      date: "सोमवार  21 जून",
      name: "निर्जला एकादशी"
  }, {
      date: "मंगलवार 22 जून",
      name: "प्रदोष व्रत (शुक्ल)"
  }, {
      date: "गुरुवार 24  जून ",
      name: "ज्येष्ठ पूर्णिमा व्रत "
  }, {
      date: "रविवार 27 जून",
      name: "संकष्टी चतुर्थी"
  }
  ],
  [{
          date: "सोमवार 05 जुलाई",
          name: "योगिनी एकादशी"
      }, {
          date: "बुधवार 07 जुलाई",
          name: "प्रदोष व्रत(कृष्ण)"
      }, {
          date: "गुरुवार 08 जुलाई",
          name: " मासिक शिवरात"
      }, {
          date: "शुक्रवार 09 जुलाई",
          name: "आषाढ़ अमावस"
      }, {
          date: "सोमवार 12 जुलाई",
          name: " जगन्नाथ रथ यात"
      }, {
          date: "शुक्रवार 16 जुलाई",
          name: "कर्क संक्रांति"
      }, {
          date: "मंगलवार 20 जुलाई",
          name: "देवशयनी एकादशी, अषाढ़ी एकादशी"
      }, {
          date: "बुधवार 21 जुलाई",
          name: "प्रदोष व्रत(शुक्ल)"
      }, {
          date: "शनिवार 24 जुलाई",
          name: "गुरु - पूर्णिमा, आषाढ़ पूर्णिमा व्रत"
      }, {
          date: "मंगलवार 27 जुलाई",
          name: "संकष्टी चतुर्थी "
      }
  ],
  [
  {
          date: "बुधवार 04 अगस्त",
          name: "कामिका एकादशी"
      }, {
          date: "गुरुवार 05 अगस्त",
          name: "प्रदोष व्रत(कृष्ण)"
      }, {
          date: "शुक्रवार 06 अगस्त",
          name: "मासिक शिवरात"
      }, {
          date: "रविवार 08 अगस्त",
          name: "श्रावण अमावस"
      }, {
          date: "बुधवार 11 अगस्त",
          name: "हरियाली तीज"
      }, {
          date: "शुक्रवार 13 अगस्त",
          name: "नाग पंचमी"
      }, {
          date: "मंगलवार 17 अगस्त",
          name: "सिंह संक्रांति"
      }, {
          date: " बुधवार 18 अगस्त",
          name: "श्रावण पुत्रदा एकादशी"
      }, {
          date: "शुक्रवार 20 अगस्त",
          name: "प्रदोष व्रत(शुक्ल)"
      }, {
          date: "शनिवार 21 अगस्त",
          name: "ओणम / थिरुवोणम"
      }, {
          date: "रविवार 22 अगस्त",
          name: "रक्षा बंधन, श्रावण पूर्णिमा व्रत"
      }, {
          date: "बुधवार 25 अगस्त",
          name: "संकष्टी चतुर्थी, कजरी तीज"
      }, {
          date: "सोमवार 30 अगस्त",
          name: "जन्माष्टमी"
      }
  ],

  [{
      date: "शुक्रवार 03 सितंबर",
      name: "अजा एकादशी"
  }, {
      date: "शनिवार 04 सितंबर",
      name: " प्रदोष व्रत(कृष्ण)"
  }, {
      date: "रविवार 05 सितंबर",
      name: "मासिक शिवरात्रि"
  }, {
      date: "मंगलवार 07 सितंबर",
      name: "भाद्रपद अमावस्या"
  }, {
      date: "गुरुवार 09 सितंबर",
      name: "हरतालिका तीज"
  }, {
      date: "शुक्रवार 10 सितंबर",
      name: "गणेश चतुर्थी "
  }, {
      date: "शुक्रवार 17 सितंबर",
      name: "परिवर्तिनी एकादशी, कन्या संक्रांति "
  }, {
      date: "शनिवार 18 सितंबर",
      name: "प्रदोष व्रत(शुक्ल)"
  }, {
      date: "रविवार 19 सितंबर",
      name: "अनंत चतुर्दशी"
  }, {
      date: "सोमवार 20 सितंबर",
      name: "भाद्रपद पूर्णिमा व्रत"
  }, {
      date: "शुक्रवार 24 सितंबर",
      name: "संकष्टी चतुर्थी"
  }],
  [{
      date: "शनिवार 02 अक्टूबर",
      name: "इन्दिरा एकादशी"
  }, {
      date: "सोमवार 04 अक्टूबर",
      name: "मासिक शिवरात्रि, प्रदोष व्रत(कृष्ण)"
  }, {
      date: "बुधवार 06 अक्टूबर",
      name: "अश्विन अमावस"
  }, {
      date: "गुरुवार 07 अक्टूबर",
      name: "शरद नवरात्रि, घटस्थापना"
  }, {
      date: "सोमवार 11 अक्टूबर",
      name: "कल्परम"
  }, {
      date: "मंगलवार 12 अक्टूबर",
      name: "नवपत्रिका पूजा"
  }, {
      date: "बुधवार 13 अक्टूबर",
      name: "दुर्गा महा अष्टमी पूजा"
  }, {
      date: "गुरुवार 14 अक्टूबर",
      name: " दुर्गा महा नवमी पूजा"
  }, {
      date: "शुक्रवार 15 अक्टूबर",
      name: "दुर्गा विसर्जन, दशहरा,शरद नवरात्रि पारणा"
  }, {
      date: "शनिवार 16 अक्टूबर",
      name: " पापांकुशा एकादशी"
  }, {
      date: "रविवार 17 अक्टूबर",
      name: "प्रदोष व्रत(शुक्ल), तुला संक्रांति"
  }, {
      date: "बुधवार 20 अक्टूबर",
      name: "अश्विन पूर्णिमा व्रत"
  }, {
      date: "रविवार 24 अक्टूबर",
      name: "संकष्टी चतुर्थी, करवा चौथ"
  }],
  [{
      date: "सोमवार 01 नवंबर",
      name: "रमा एकादशी"
  }, {
      date: "मंगलवार 02 नवंबर",
      name: "धनतेरस, प्रदोष व्रत(कृष्ण)"
  }, {
      date: "बुधवार 03 नवंबर",
      name: "मासिक शिवरात"
  }, {
      date: "गुरुवार 04 नवंबर",
      name: "दिवाली, कार्तिक अमावस्या, नरक चतुर्दशी"
  }, {
      date: "शुक्रवार 05 नवंबर",
      name: "गोवर्धन पूजा"
  }, {
      date: "शनिवार 06 नवंबर",
      name: "भाई दूज"
  }, {
      date: "बुधवार 10 नवंबर",
      name: "छठ पूजा"
  }, {
      date: "रविवार 14 नवंबर",
      name: "देवुत्थान एकादशी "
  }, {
      date: "मंगलवार 16 नवंबर",
      name: "प्रदोष व्रत(शुक्ल),वृश्चिक संक्रांति"
  }, {
      date: "शुक्रवार 19 नवंबर",
      name: "कार्तिक पूर्णिमा व्रत"
  }, {
      date: "मंगलवार 23 नवंबर",
      name: "संकष्टी चतुर्थी"
  }, {
      date: "मंगलवार 30 नवंबर",
      name: "उत्पन्ना एकादशी"
  }],
  [{
      date: "गुरुवार 02 दिसंबर",
      name: "मासिक शिवरात्रि, प्रदोष व्रत(कृष्ण)"
  }, {
      date: "शनिवार 04 दिसंबर",
      name: "मार्गशीर्ष अमावस"
  }, {
      date: "मंगलवार 14 दिसंबर",
      name: "मोक्षदा एकादशी"
  }, {
      date: "गुरुवार 16 दिसंबर",
      name: " प्रदोष व्रत(शुक्ल),धनु संक्रांति"
  }, {
      date: "रविवार 19 दिसंबर",
      name: "मार्गशीर्ष पूर्णिमा व्रत"
  }, {
      date: "बुधवार 22 दिसंबर",
      name: "संकष्टी चतुर्थी"
  }, {
      date: "गुरुवार 30 दिसंबर",
      name: "सफला एकादशी"
  }, {
      date: " शुक्रवार 31 दिसंबर",
      name: "प्रदोष व्रत(कृष्ण)"
  }]
]

var Ekadashi_panchang = [
  {
    ekadashi: [
      {
        date: "शनिवार 09 जनवरी 20",
        name: "सफला एकादशी"
      }, {
        date: "रविवार 24 जनवरी",
        name: "पौष पुत्रदा एकादशी"
      }, {
        date: "रविवार 07 फरवरी",
        name: "षटतिला एकादशी"
      }, {
        date: "मंगलवार 23  फरवरी",
        name: "जया एकादशी"
      }, {
        date: "मंगलवार 09 मार्च",
        name: "विजया एकादशी"
      }, {
        date: "गुरुवार 25 मार्च ",
        name: "आमलकी एकादशी"
      }, {
        date: "बुधवार 07 अप्रैल",
        name: "पापमोचिनी एकादशी"
      }, {
        date: " शुक्रवार 23 अप्रैल ",
        name: "कामदा एकादशी"
      }, {
        date: "शुक्रवार 07 मई",
        name: " वरुथिनी एकादशी"
      }, {
        date: "रविवार 23 मई",
        name: "मोहिनी एकादशी"
      }, {
        date: "रविवार 06 जून",
        name: "अपरा एकादशी"
      }, {
        date: "सोमवार 21 जून",
        name: "निर्जला एकादशी"
      }, {
        date: "सोमवार 05 जुलाई",
        name: " योगिनी एकादशी"
      }, {
        date: "मंगलवार 20 जुलाई",
        name: "देवशयनी एकादशी"
      }, {
        date: "बुधवार 04 अगस्त ",
        name: "कामिका एकादशी"
      }, {
        date: "बुधवार 18 अगस्त",
        name: "श्रावण पुत्रदा एकादशी"
      }, {
        date: "शुक्रवार 03 सितंबर ",
        name: "अजा एकादशी"
      }, {
        date: "शुक्रवार 17 सितंबर",
        name: "परिवर्तिनी एकादशी"
      }, {
        date: "शनिवार 02 अक्टूबर",
        name: " इन्दिरा एकादशी"
      }, {
        date: "शनिवार  16 अक्टूबर",
        name: " पापांकुशा एकादशी"
      }, {
        date: "सोमवार 01 नवंबर",
        name: " रमा एकादशी"
      }, {
        date: "रविवार 14 नवंबर",
        name: "देवुत्थान एकादशी"
      }, {
        date: "मंगलवार 30 नवंबर ",
        name: "उत्पन्ना एकादशी"
      }, {
        date: "मंगलवार 14 दिसंबर",
        name: "मोक्षदा एकादशी"
      }, {
        date: "गुरुवार 30 दिसंबर",
        name: "सफला एकादशी"
      }
    ]
  }
]