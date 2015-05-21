// The sum of the squares of the first ten natural numbers is,
// 1**2 + 2**2 + ... + 10**2 = 385
// The square of the sum of the first ten natural numbers is,
// (1 + 2 + ... + 10)**2 = 55**2 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
// Make it so that it doesn't just work for the number 10.



  var i=0;
var sumDiff = {

//the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
  diffofSquares : function(num) {

      var diff = this.sqofSum(num) - this.sumofSquares(num) ;
      console.log('result is : ' + diff );
      return diff;

    } ,
  
  //The sum of the squares : 1**2 + 2**2 + ... + 10**2 = 385
  sumofSquares : function(num){

    var sumSquare=0;

    for (i=0;i<=num;i++) {
      
      sumSquare = sumSquare + (i*i);

      }
     
     return sumSquare;
    } ,

  //The square of the sum :  (1 + 2 + ... + 10)**2 = 55**2 = 3025
   sqofSum : function(num) {

        var sum = 0;
        for(i=0;i<=num;i++){
          
          sum = sum+i;
        
        }
        
        return sum*sum;
      }

};

var myno =20;
var myoutput = sumDiff.diffofSquares(myno);
console.log("The result for  " + myno + " is " + myoutput);