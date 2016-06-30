ready = ->
  $('.selectable-dnas input[type=checkbox]').change( ->
    highlightSelected()
    updateCounter()
  )

  highlightSelected()

updateCounter = ->
    count = $('.selectable-dnas input[type=checkbox]:checked').length
    $('#counter').text(count)

highlightSelected = ->
  $('.selectable-dnas input[type=checkbox]:checked').closest('label')
                                                    .addClass('highlighted')
  $('.selectable-dnas input[type=checkbox]:not(:checked)').closest('label')
                                                          .removeClass('highlighted')

$(document).on('turbolinks:load', ready)
