
var submit=document.querySelector("#sub");
var sec=1*1000
var minute=60*sec
var hour=60*minute

setTimeout('Sub()',hour);

function Sub(){
	document.querySelector("form").submit();
}

var cards = $(".ques");
for(var i = 0; i < cards.length; i++){
    var target = Math.floor(Math.random() * cards.length -1) + 1;
    var target2 = Math.floor(Math.random() * cards.length -1) +1;
    cards.eq(target).before(cards.eq(target2));
}

$(".ques").each(function(){
	var cards = $(this).children(".custom-radio");
	for(var i = 0; i < cards.length; i++){
	    var target = Math.floor(Math.random() * cards.length -1) + 1;
	    var target2 = Math.floor(Math.random() * cards.length -1) +1;
	    cards.eq(target).before(cards.eq(target2));
}
});
$(".fillblank").each(function(){
	var cards = $(this).children();
	for(var i = 0; i < cards.length; i++){
	    var target = Math.floor(Math.random() * cards.length -1) + 1;
	    var target2 = Math.floor(Math.random() * cards.length -1) +1;
	    cards.eq(target).before(cards.eq(target2));
}
});
