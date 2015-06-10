 var currentpage = 1; 

 // function that generates the url for the flicker API
 var generateUrl = function(photo){
  var url = ['http://farm',
              photo.farm,
              '.static.flickr.com/',
              photo.server ,
              '/' ,
               photo.id ,
               '_' ,
                photo.secret ,
                 '_m.jpg'].join('');
    return url ;
}

//
var flickrQuery = function () {

  var query = $('#search').val();
  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';

  $.getJSON(flickrUrl, {
    method: 'flickr.photos.search',
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    text: query,
    format: 'json',
    per_page: 100 ,
    page: currentpage
  }).done(function (results){
      //console.log(results);
     //  var photo = results.photos.photo[0];
      // console.log(photo);
      $.each(results.photos.photo, function (i,photo){
        var url = generateUrl(photo);
        var $img = $('<img>').attr('src',url);
        var $a = $('<a>').attr('href',url).append($img);
        $a.appendTo('#gallery');

       // Use this when only displaying the images and not the anchor tab
       //  var $img = $('<img>').attr('src',url);
       // $img.appendTo('#gallery').fadeIn(200);
      }); // endof each
    
  });// end of done 
}// end of flickrQuery




$(document).ready(function () {

  $("#gallery").empty();
  $('#image_search').on('submit',function(e){
     console.log('inside submit function');
     $("#gallery").empty();
     e.preventDefault();
    flickrQuery();
 
  }); //end of submit 

  $(window).on('scroll', function() {
   // console.log($(window).scrollTop() , $(document).height() , $(window).height());
    if($(window).scrollTop() > ($(document).height() -  $(window).height() - 30 ) ){
      console.log("nearing end of page");
      currentpage= currentpage+1;
      flickrQuery();
    }

  }); // end of scroll

}); // endof doc ready