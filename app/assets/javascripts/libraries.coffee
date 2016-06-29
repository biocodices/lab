ready = ->
  $('.selectable-dnas input[type=checkbox]').change(->
    if this.checked
      $(this).closest('label').addClass('highlighted')
    else
      $(this).closest('label').removeClass('highlighted')
  )

countChecked = ->


$(document).ready(ready)
$(document).on('page:load', ready)
