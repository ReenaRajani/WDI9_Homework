/*  nucleotide Warmup 
Each symbol represents a nucleotide, which is a fancy name for the particular molecules that happen to make up a large part of DNA.
There are 5 types of nucleotides. 4 of these occur in DNA: A, C, G, and T. 4 occur in RNA: A, C, G, U.
There are no other nucleotides.
Make sure that you validate it has nucleotides!
Find how many of each nucleotides are in a string that you pass in to a function




                     .__                __  .__    .___             
  ____  __ __   ____ |  |   ____  _____/  |_|__| __| _/____   ______
 /    \|  |  \_/ ___\|  | _/ __ \/  _ \   __\  |/ __ |/ __ \ /  ___/
|   |  \  |  /\  \___|  |_\  ___(  <_> )  | |  / /_/ \  ___/ \___ \ 
|___|  /____/  \___  >____/\___  >____/|__| |__\____ |\___  >____  >
     \/            \/          \/                   \/    \/     \/ 




*/

//my Code !! 
// Instead of ConsoleLog i can return my values 

var checkNucleotide = function(myString){

  var myChar;
  var count =0;
  var countA=0 ,countC =0 ,countG=0 ,countT=0,countU =0;
  var nucleotide = ['A','C','G','T' ,'U'];
  for(var i =0;  i<myString.length; i++){

    myChar = myString[i].toUpperCase();
    nucleotide.indexOf(myChar) !== -1  ? count +=1 : count +=0;
    myChar ==='A' ? countA +=1 :countA +=0;
    myChar ==='C' ? countC +=1 :countC +=0;
    myChar ==='G' ? countG +=1 :countG +=0;
    myChar ==='T' ? countT +=1 :countT +=0;
    myChar ==='U' ? countU +=1 :countU +=0;

  }
   console.log('No of nucleotides in the string' + myString + 'is :: ' + count);
   console.log (' Each Individual Nucleotide Count : \n nucleotide A :: ' + countA +
                                                    '\n nucleotide C :: ' + countC +
                                                    '\n nucleotide G :: ' + countG +
                                                    '\n nucleotide T :: ' + countT +
                                                    '\n nucleotide U :: ' + countU
                                                     ) ;

}

checkNucleotide('Welcome');
checkNucleotide('GATATCCA'); // Thanks to Josh for the info !! 

/*

//Jack the Wolf's code 

/* Test if there is a valid nucleotide that returns a count of a sing letter in a string that returns an object with all of the counts */

// This is an Object that contains a 
var Nucleotides = {
  testValidNucleotide : function () {

  } ,

  countIndividualNucleotide : function(string ,character){

    var nucleotideCount =0;
    for(var i=0 ; i<string.length ; i++ ){
        if(character === string[i]) {
          nucleotideCount +=1;
        }
    }
    return nucleotideCount;
  } ,

  returnNucleotideCounts : function( string) {
    var nucletideCounts  = {
      'A' : this.countIndividualNucleotide('JACK' , 'A');
      'C' : this.countIndividualNucleotide('JACK' , 'C');
      'G' : Nucleotides.countIndividualNucleotide('JACK' , 'G');
      'T' : Nucleotides.countIndividualNucleotide('JACK' , 'T');  
      }

      return nucletideCounts ;
  }

} // end of Nucleotides Object 

// This is how we would call it individually
console.log(Nucleotides.countIndividualNucleotide('JACK' , 'A'));

// Aaron's Short and Sweet Code !!
var fnucleoTides = function(string) {
    var nucleoTides = {    A:0,C:0,G:0,T:0,U:0    } // This is what i liked about it !! you could put it outside the function too 
    for (var i =0; i <string.length; i++) {
            nucleoTides[string[i]] += 1;
        }
    return nucleoTides;
}

console.log(fnucleoTides("ACBBGTU"))
console.log(fnucleoTides("ACSCBFTU"))
console.log(fnucleoTides("CGJJJ"))
console.log(fnucleoTides("ABCDEFG"))




*/
