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
			prettyPrint();
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

snipGeek.addSnip = function(){
	$('#add-snip').click(function(){
		var snipForm = $('#new_snip').clone();
		snipGeek.overlay();
		$('#overlay-content').append(snipForm);
	});	
}

snipGeek.editProfile = function(){
	$('.edit-profile').click(function(){
		var profileUrl = $(this).attr('href');
		snipGeek.overlay();
		$('#overlay-content').load(profileUrl + ' #snips',function(){
			$(this).find('#snips').addClass('popup-profile').removeAttr('id');
		});	
		return false;
	});	
}

snipGeek.loginUser = function(){
	$('.login-user').click(function(){
		var loginUrl = $(this).attr('href');
		snipGeek.overlay();
		$('#overlay-content').load(loginUrl + ' #snips',function(){
			$(this).find('#snips').addClass('popup-login').removeAttr('id');
		});	
		return false;
	});	
}

snipGeek.defaults = function(){
	$('#snips').click(function(){
		$('#new_snip').fadeOut();
	});	
	snipGeek.fullSnippet();
	snipGeek.addSnip();
	snipGeek.editProfile();
	snipGeek.loginUser();
}
