var ready;
ready = function() {
	$('.glyphicon').parent().click(function(){
    if(jQuery(this).children('.glyphicon').hasClass('glyphicon-chevron-right')){
        jQuery(this).children('.glyphicon').removeClass('glyphicon-chevron-right').addClass('glyphicon-chevron-down');
    }else if(jQuery(this).children('.glyphicon').hasClass('glyphicon-chevron-down')){
        jQuery(this).children('.glyphicon').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-right');
    }
});
};

$(document).ready(ready);
$(document).on('page:load', ready);