ready = ->
  # Pick an existing option in the forms
  $(".existing-options").find(".option").click((event) ->
    optionValue = $.trim($(this).text())
    associatedInput = $(this).closest('.existing-options')
                             .siblings('.form-group').find('input')
    associatedInput.val(optionValue)
    console.log optionValue
  )

$(document).on('turbolinks:load', ready)
