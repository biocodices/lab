ready = ->
  $('td.details').hover(openDropDown, closeDropDown)

openDropDown = ->
  $(this).find('.dropdown').addClass('open')

closeDropDown = ->
  $(this).find('.dropdown').removeClass('open')


$(document).ready(ready)
$(document).on('page:load', ready)
