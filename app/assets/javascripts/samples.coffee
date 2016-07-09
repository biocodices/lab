ready = ->
  $select = $('#sample_patient_id')
  if $select.length
    $select.selectize({ onChange: updatePatientForm; })
    # If no patient is selected, enable the new patient form
    updatePatientForm($select[0].selectize.getValue())

updatePatientForm = (value) ->
  patientSelected = (value != '')
  disablePatientFields(patientSelected)

disablePatientFields = (bool) ->
  # If bool is true, disable the fields; if false, enable them.
  inputs = $('fieldset#patient input')
  selects = $('fieldset#patient select')

  inputs.prop('disabled', bool)
  selects.prop('disabled', bool)
  inputs.val('')
    

$(document).on('turbolinks:load', ready)
