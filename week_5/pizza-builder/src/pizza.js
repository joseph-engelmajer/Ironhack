// Write your Pizza Builder JavaScript in this file.
$(document).on('ready', function(){

// ============================================================================
//                 Toppings Appear/Disappear
// ============================================================================

$('.btn-pepperonni').click(function(){
    $('.pep').toggle();
    $('.btn-pepperonni').toggleClass('active');
    $('.js-price-pepperonni').toggleClass('active');
    updatePrice()
});

$('.btn-mushrooms').click(function(){
    $('.mushroom').toggle();
    $('.btn-mushrooms').toggleClass('active');
    $('.js-price-mushrooms').toggleClass('active');
    updatePrice()
});

$('.btn-green-peppers').click(function(){
    $('.green-pepper').toggle();
    $('.btn-green-peppers').toggleClass('active');
    $('.js-price-green-peppers').toggleClass('active');
    updatePrice()
});


$('.btn-sauce').click(function(){
    $('.sauce').toggleClass('.sauce sauce-white');
    $('.btn-sauce').toggleClass('active');
    $('.js-price-sauce').toggleClass('active');
    updatePrice()
});

$('.btn-crust').click(function(){
    $('.crust').toggleClass('.crust crust-gluten-free');
    $('.btn-crust').toggleClass('active');
    $('.js-price-crust').toggleClass('active');
    updatePrice()
});
// ============================================================================
//                 Button Appearance v
// ============================================================================

// $('.btn-pepperonni').click(function(){
//     $('.btn-pepperonni').toggleClass('.btn-pepperonni active');
// });

// $('.btn-mushrooms').click(function(){
//     $('.btn-mushrooms').toggleClass('.btn-mushrooms active');
// });

// $('.btn-green-peppers').click(function(){
//     $('.btn-green-peppers').toggleClass('.btn-green-peppers active');
// });

// $('.btn-sauce').click(function(){
//     $('.btn-sauce').toggleClass('.btn-sauce active');
// });

// $('.btn-crust').click(function(){
//     $('.btn-crust').toggleClass('.btn-crust active');
// });

// ============================================================================
//                 Price Updating 
// ============================================================================

function updatePrice() {
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
}

// ============================================================================
//                 Price Itemization Updating 
// ============================================================================

// $('.btn').click(function(){
    
// if ($('.btn-pepperonni').hasClass("active")){
//     $('js-price-pepperonni').show
// };

// if ($('.btn-green-peppers').hasClass("active")){
//     $('js-price-green-peppers').toggle();
// };

// if ($('.btn-mushrooms').hasClass("active")){
//     $('js-price-mushrooms').toggle();
// };

// if ($('.btn-sauce').hasClass("active")){
//     $('js-price-sauce').toggle();
// };

// if ($('.btn-crust').hasClass("active")){
//     $('js-price-crust').toggle();
// };

// });

// 
// 
// 
// 
// 
// 
// 

});