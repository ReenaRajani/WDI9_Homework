/*

May 08 2015
Given "listen" and a list of candidates like "enlists" "google" "inlets" "banana" the program should return a list containing "inlets".

Write a javascript file that solves this problem!

ar input = "monk, konm, bbc, cbb, dell, ledl";
var words = input.split(", ");

for ( var i = 0; i < words.length; i++) {

    var word = words[i];
    var alphabetical = word.split("").sort().join("");

    for (var j = 0; j < words.length; j++) {

        if (i === j) {
            continue;
        }

        var other = words[j];
        if(alphabetical === other.split("").sort().join("")){
            console.log(word + " - " + other + " (" + i + ", " + j + ")");
        }
    }
}

*/

var findAnagram = function(wordtofind , aword) {

  var findwordsort = wordtofind.split('').sort().join('');
  var wordsort = aword.split('').sort().join('');

 if(aword.length  > wordtofind.length || aword.length  < wordtofind.length ) {

    console.log(aword + ' is Not an Anagram for ' + wordtofind);
    return false;

 } else {

    if(findwordsort ===wordsort)  {

    console.log(' THE WORD ' + word + ' IS AN ANAGRAM');
    return true;
  } else {

    console.log(' The word ' + word + ' is NOT an anagram');
    return false;
  }

 }


}

console.log("ANAGRAM ");
var wordtofind ="listen";
var lists = ['enlists','google','inlets','banana'];
var result;

for(var i =0 ;i < lists.length ; i++){

  var word = lists[i];
  var result = findAnagram(wordtofind,word);

}

/* Jacks Code */


var Anagram = {

  var validWords =[];
  returnValidAnagrams : function(word,wordstotest ){
    console.log("inside returnValidAnagrams");
    var sortedMainWord = this.sortAplhabetically( word);
    for (var i = 0 ;i< wordstotest.length ; i++) {
        var currentword = wordstotest[i];
        var sortedCurrentWord = this.sortAplhabetically(currentword);
      var isequal  this.arraysEqual(sortedMainWord,sortedCurrentWord);
      if(isequal) {
        validWords.push( sortedCurrentWord );
      }
    }
  return validWords;
  } ,
  sortAplhabetically : function(wordtosort){
    console.log("inside sortAplhabetically");
    return wordtofind.split('').sort();

  } ,
  arraysEqual : function(mainword , currentword) {
    console.log("inside arraysEqual");
    if(mainword.join() === currentword.join()){
      console.log("yup ! they are equal ")
      return true;
    }
    else {
      return false;
    }
  }
}

var  returnedValidWords = Anagram.returnValidAnagrams("jack" , ["acjk" , 'jjac' ,'wolf' ,'kacj'])

console.log('Valid Words : ' + returnedValidWords );

