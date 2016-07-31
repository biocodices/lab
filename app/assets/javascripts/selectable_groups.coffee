ready = ->
  $(checkboxes).change( ->
    highlightSelected()
    updateCounter()
  )

  $('.multi-option input[type=checkbox]').change( ->
    $checkboxes = $(this).closest('.option-group-container')
                         .find('.option-group')
                         .find('input[type=checkbox]')
    $checkboxes.prop('checked', !$checkboxes.prop('checked'))
    highlightSelected()
    updateCounter()
  )

  highlightSelected()

checkboxes = '.selectable-dnas .option-group input[type=checkbox]'
updateCounter = ->
    count = $(checkboxes + ':checked').length
    $('#counter').text(count)

highlightSelected = ->
  $(checkboxes + ':checked').closest('label').addClass('highlighted')
  $(checkboxes + ':not(:checked)').closest('label')
                                                          .removeClass('highlighted')

$(document).on('turbolinks:load', ready)

