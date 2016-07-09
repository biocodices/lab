ready = ->
  $search = $('#search')
  $search.keyup(filterTable) if $search.length

filterTable = ->
  $hiddenRows = $('.hidden-row')
  query = $(this).val().trim()
  re = new RegExp(query, 'i')

  $hiddenRows.show()
  $hiddenRows.prev().show()  # The previous sibling is .display-row

  return if query == ''

  $nonMatches = $hiddenRows.filter -> !re.test($(this).text())
  $nonMatches.hide()
  $nonMatches.prev().hide()

$(document).on('turbolinks:load', ready)
