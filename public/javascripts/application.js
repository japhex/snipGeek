$(document).ready(function(){
	snipGeek.defaults();
});

snipGeek = {};

snipGeek.defaults = function(){
	$('#add-snip').click(function(){
		$('#new_snip').fadeIn();
	});
}
