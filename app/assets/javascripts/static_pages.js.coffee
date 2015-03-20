# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	carouselTime()
	scrollFunction()
  
$(document).ready ready
$(document).on "page:load", ready

# interval is in milliseconds. 1000 = 1 second - so 1000 * 10 = 10 seconds
carouselTime = ->
	$('.carousel').carousel({
 		interval: 1000 * 10
	});

#jQuery for page scrolling feature - requires jQuery Easing plugin
scrollFunction = ->
  $('a.page-scroll').bind 'click', (event) ->
    $anchor = $(this)
    $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo'
    event.preventDefault()

#codigo da animação sobre as imagens da exposição
  $("[rel='tooltip']").tooltip()
  $(".featurette").hover (->
    $(this).find(".caption").slideDown 250 #.fadeIn(250)
  ), ->
    $(this).find(".caption").slideUp 250 #.fadeOut(205)
    $(this).find(".caption-ext").slideUp 250

  $(".go-ext").on "click", (event) ->
    $(".featurette").find(".caption-ext").slideDown 250
    $(this).css("display: none;")



  