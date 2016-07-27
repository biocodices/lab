ready = ->
  # Pick an existing option in the forms
  $(".existing-options").find(".option").click((event) ->
    optionValue = $.trim($(this).text())
    associatedInput = $(this).closest('.existing-options')
                             .siblings('.form-group').find('input')
    associatedInput.val(optionValue)
    console.log optionValue
  )

  # Initialize bootstrap tooltips
  $('[data-toggle="tooltip"]').tooltip()

$(document).on('turbolinks:load', ready)
