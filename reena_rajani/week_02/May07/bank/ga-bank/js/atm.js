/*
* Keep track of the checking and savings balances somewhere
* Add functionality so that a user can deposit money into one of the bank accounts.
* Make sure you are updating the display and manipulating the HTML of the page
so a user can see the change.


var checkingBalance = 0;
$("#checking-deposit").on('click',function(){
 
 checkingBalance = checkingBalance + parseInt( $('#checking-amount').val());
 $('#checking-balance').text('$'+checkingBalance);
 if(checkingBalance <= 0){
   $('.balance').css("background-color", "red");
   } else { 
     $('.balance').css("background-color", '#E3E3E3 ');
   }

});

*/
var accounttype ="";
var $amount;
var checkingAmount =0;
var savingAmount;


var checkingDeposit = function(){

  $amount = parseInt($('#checking-amount').val());
  checkingAmount += $amount ;
  console.log('checkingAmount :' + checkingAmount);
  $('#checking-balance').text('$'+ checkingAmount );

}

var checkingWithdraw = function() {

$amount = parseInt($('#checking-amount').val());
if(isNegative($amount) === -1  && isNegative(checkingAmount) === -1) {
    console.log(' Transaction unsuccessful, Invalid amount  , Amount cannot be negative' );

}else {

  checkingAmount = checkingAmount- $amount ;
}
checkingAmount = checkingAmount- $amount ;

}

var isNegative= function(amount){
  
  return (Math.sign(amount)) ;

}

var $button = $('#checking-deposit');
var res = $button.on('click', checkingDeposit);
var res = $button.on('click', checkingWithdraw);