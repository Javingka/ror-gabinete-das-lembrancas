;(function(){
	// Menu settings
	$('#menuToggle, .menu-close').on('click', function(){
		$('#menuToggle').toggleClass('active');
		$('body').toggleClass('body-push-toleft');
		$('#theMenu').toggleClass('menu-open');
	});

	$('#menuToggle').on('click', function(){
		$('.text-vertical-about').css('background-color:#000;')

	});
})(jQuery)