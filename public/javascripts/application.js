$(document).ready(function(){
	snipGeek.defaults();
});

snipGeek = {};

snipGeek.fullSnippet = function(){
	$('.snippet').find('a').click(function(){
		var snippetUrl = $(this).attr('href');
		snipGeek.overlay();
		$('#overlay-content').load(snippetUrl + ' #snips',function(){
			$(this).find('#snips').addClass('full-snip').removeAttr('id');
		});	
		return false;
	});
}

snipGeek.overlay = function(){
	var topOffset = $(window).height();
	var leftOffset = $(window).width();
	var $overlay = $('#overlay');
	var $overlayContent = $('#overlay-content');
		
	topOffset = (topOffset - 400) / 2;
	leftOffset = (leftOffset - 600) / 2;
	$overlayContent.css({
		'left' : leftOffset + 'px',
		'top' : topOffset + 'px'
	});
	
	$overlay.fadeIn();
	$overlayContent.append('<a id="close" href="#">x</a>').fadeIn();
	$overlay.click(function(){
		$(this).fadeOut();
		$(this).next().fadeOut('slow',function(){
			$(this).empty();
		});		
	});
	$overlayContent.find('#close').click(function(){
		$(this).parent().prev().fadeOut();
		$(this).parent().fadeOut('slow',function(){
			$(this).empty();
		});
	});
}

snipGeek.defaults = function(){
	$('#add-snip').click(function(){
		$('#new_snip').fadeIn();
	});
	snipGeek.fullSnippet();
}
