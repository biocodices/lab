ready = ->
  $('.selectable-dnas input[type=checkbox]').change(->
    if this.checked
      $(this).closest('label').addClass('highlighted')
    else
      $(this).closest('label').removeClass('highlighted')

    updateCounter()
  )

updateCounter = ->
    count = $('.selectable-dnas input[type=checkbox]:checked').length
    $('#counter').text(count)


$(document).on('turbolinks:load', ready)
