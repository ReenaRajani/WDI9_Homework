/*
Serge answers 'Sure.' if you ask him a question.

He answers 'Woah, chill out!' if you yell at him (ALL CAPS).

He says 'Fine. Be that way!' if you address him without actually saying anything.

He answers 'Whatever.' to anything else.

What do you need to do?

Make an HTML file with an input field and a button
Write the javascript file that adds an event handler to the button and retrieves the details from the input field
Figure out the appropriate response (from the above conditions)

If you are flying through it, go and make something cool with the styling



<input type="text" id ="my_input"> </input>
  <button id="yell">Yes !! </button>
*/


console.log('Hello');

var button = document.getElementById('yell');
var input  = document.getElementById('my_input').value;

var sergeResponse = function() {

  var sergeResp = " What Ever !! "
  if (input.endsWith('?') ) {
    sergeResp = 'Sure';
  } 
  document.getElementById('solution').innerHTML = sergeResp;

}
button.addEventListener('click', sergeResponse);

/* to be completed 

var Serge = {


  isSilent : function(message) {
    console.log('isSilent Was called ');
    if(message === "") {
      return true;
    }

  } ,
  isShouting : function(message) {

    console.log('isShouting Was called ');
    if(message ===message.toUpperCase() ) {
      return true;
    }
  } ,
  isAQuesiton : function(message) {
    console.log('isAQuesiton Was called ');
    if(message[message.length -1]=== '?'){
      return truel
    }
  } ,
  respond : function() {
    console.log('respond Was called ');
     var message  = document.getElementById('my_input').value;
     var response = document.getElementById('solution');
     if( serge.isSilent(message) ) {
      response.innerHTML('Sure!')
      console.log('Fine,Be that way') 
     } else if (serge.isShouting(message) ) {

     } else if(serge.isAQuesiton(message)) {

     } else {

     }
     console.log( 'silent : ' serge.isSilent(message) );
     console.log( 'isShouting : ' serge.isShouting(message) );
     console.log( 'isAQuesiton : ' serge.isAQuesiton(message) );

  }

}

var button = document.getElementById('yell');
button.addEventListener('click', serge.respond);

*/