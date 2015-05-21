var img = document.getElementsByTagName('img')[0];
img.style.left = 0;
img.style.right = 0;
var newleft = 0
var maxWidth = window.innerWidth -296; //296 is the length od the cat 
var newRight =maxWidth;
var animateright;

var  catWalk = function(){
    
    newleft +=  10;
    img.style.left = newleft + 'px';
    if(parseInt(img.style.left) >= maxWidth)
    {
       // clearInterval(animate);
        console.log(img.style.left);
        img.style.transform = "scaleX(-1)";
        console.log(img.style.left);
        animateright = setInterval(walkBack,100);
        clearInterval(animate);
    }
    
};


var walkBack = function() {
 console.log('walking back')
    newleft = newleft-10;
    img.style.left = newleft + 'px';
      if(parseInt(img.style.left) === 0){
        clearInterval(animateright);
        //clearInterval(animate);
      }
    

}
var animate = setInterval(catWalk,100);
// var animateright = setInterval(walkBack,30);



// window.screen.availWidth
