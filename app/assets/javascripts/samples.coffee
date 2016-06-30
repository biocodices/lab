ready = ->
  $('#sample_patient_id').selectize()

$(document).on('turbolinks:load', ready)
