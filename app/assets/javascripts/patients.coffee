ready = ->
  $search = $('#search-patient')
  $search.keyup(filterPatients) if $search.length

  $('form').submit( (e) ->
    e.preventDefault()
    $form = $(this)

    request = $.ajax({
      url: $form.attr('action'),
      method: 'PATCH',
      data: new FormData($form[0]),
      dataType: 'html',
      processData: no;
    })
  )

filterPatients = ->
  query = $(this).val().trim()
  re = new RegExp(query, 'i')

  $patients = $('.patient')
  $patients.show()

  return if query == ''

  $nonMatches = $patients.filter -> !re.test($(this).text())
  $nonMatches.hide()

$(document).on('turbolinks:load', ready)

