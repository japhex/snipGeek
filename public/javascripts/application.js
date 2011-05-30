$(document).ready(function(){
	snipGeek.defaults();
});

snipGeek = {};

snipGeek.defaults = function(){
	$('#new_snip').find('#snip_submit').click(function(){
		$('#new_snip').submit();
		return false;		
	});
}
