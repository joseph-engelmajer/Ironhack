// Write your Pizza Builder JavaScript in this file.
$(document).on('ready', function(){

$('.btn-pepperonni').click(function(){
    $('.pep').toggle();
});

$('.btn-mushrooms').click(function(){
    $('.mushroom').toggle();
});

$('.btn-green-peppers').click(function(){
    $('.green-pepper').toggle();
});


$('.btn-sauce').click(function(){
    $('.sauce').toggleClass('.sauce sauce-white');
});


$('.btn-crust').click(function(){
    $('.crust').toggleClass('.crust crust-gluten-free');
});

$('.btn-pepperonni').click(function(){
    $('.btn-pepperonni').toggleClass('.btn-pepperonni active');
});

$('.btn-mushrooms').click(function(){
    $('.btn-mushrooms').toggleClass('.btn-mushrooms active');
});

$('.btn-green-peppers').click(function(){
    $('.btn-green-peppers').toggleClass('.btn-green-peppers active');
});

$('.btn-sauce').click(function(){
    $('.btn-sauce').toggleClass('.btn-sauce active');
});

$('.btn-crust').click(function(){
    $('.btn-crust').toggleClass('.btn-crust active');
});



$('.btn').click(function(){
	var i = 10
if ($('.btn-pepperonni').hasClass("active")){
	i += 1;
};

if ($('.btn-green-peppers').hasClass("active")){
	i += 1;
};

if ($('.btn-mushrooms').hasClass("active")){
	i += 1;
};

if ($('.btn-sauce').hasClass("active")){
	i += 3;
};

if ($('.btn-crust').hasClass("active")){
	i += 5;
};
$('.total').text('$'+i)
});


$('.btn').click(function(){
    
if ($('.btn-pepperonni').hasClass("active")){
    $('js-price-pepperonni').hide();
};

if ($('.btn-green-peppers').hasClass("active")){
    $('js-price-green-peppers').toggle();
};

if ($('.btn-mushrooms').hasClass("active")){
    $('js-price-mushrooms').toggle();
};

if ($('.btn-sauce').hasClass("active")){
    $('js-price-sauce').toggle();
};

if ($('.btn-crust').hasClass("active")){
    $('js-price-crust').toggle();
};

});

// 
// 
// 
// 
// 
// 
// 

});

