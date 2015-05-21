/*
In the body of your HTML, create a <div> to hold the video player, either below or to the side of the list, and give it an id.
In the script tag that you were working in before, create a thumbnailify() function that takes a single argument.
Move the code that is currently inside your for loop into that thumbnailify() function.
Change the contents of your function so that it uses a single argument, which is a jQuery object that represents an , rather than an array of elements.
Move the for loop so that it occurs after you define thumbnailify()
Call thumbnailify() from inside your for loop.
Make sure your player first works like it did before. Hint: you should only reference an array index from inside of the for loop.
Now, in the thumbnailify() function, add a click listener to the link. We recommend using an anonymous function for the callback (not a named function). Put a console.log inside the callback to make sure it works.
In the click listener callback, you will be using the "create and store, manipulate, inject" pattern to display an embedded video in the DIV you created.
To find out what the code for an embedded Youtube video looks like, go to Youtube.com and find any embed code for a video.
You can use youtube.generateEmbedUrl() from the youtube.js library to generate an embed URL.
Use string concatenation, .html(), or other jQuery method of your choice to assemble and insert the embedded video element.
Check your work! Try all your video links. Is there anything you need to change?
As a bonus, try to make the video watcher <div> fade in using jQuery.
Make sure that you use your browser developer tools to make debugging easier while working on this. Check for errors, and use console.log() to figure out how far your code makes it, and what the values of your variables are along the way.

$(function(){
  $("#button").click(function () { 
      $("#frame").attr("src", "http://www.youtube.com/embed/"+ $("input#videoUrl").val() +"?rel=0&autoplay=1");
      });
});
// var p = $('<p>') // create an element and store a reference
  // p.addClass('special'); // use a method to manipulate it 
  // $('body').append(p); // inject into the HTML 
*/


console.log("hello");

var thumbnailify = function($link) {
  var url = youtube.generateThumbnailUrl($link.attr('href'));
  var $newImg = $('<img>');
  $newImg.attr('src' ,url );
  $link.append($newImg); 

  ($link).on( "click", function(event) {
    event.preventDefault();
  console.log('click event called ');
  
var  emvideo = youtube.generateEmbedUrl($link.attr('href'));
console.log(emvideo);


// var $newdiv = $('<div>').attr('id', 'videoholder');
// $link.append($newdiv); 
$("#videoHolder").html( '<iframe id="frame" src="" width="500" height="300">' + $("#frame").attr("src", youtube.generateEmbedUrl($link.attr('href')) ) +  '</iframe></div>');
     
  // $('#player').hide().html(embedHTML).fadeIn(3000);
  //or 
  //$('#player').hide().fadeIn(3000);
 // $('#player').html(embedHTML)
});


}



var $link;
var $videos = $('a');

for(var i=0;i<$videos.length ; i++){
  $link = $($videos[i]); // non jquery to jquery by appending $
    thumbnailify($link);
}
