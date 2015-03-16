# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	carouselTime()

$(document).ready(ready)
$(document).on('page:load', ready)

# interval is in milliseconds. 1000 = 1 second - so 1000 * 10 = 10 seconds
carouselTime = ->
	$('.carousel').carousel({
 		interval: 1000 * 10
	});

