require 'csv'

csv_path = File.expand_path '~/patients.csv'

CSV.foreach(csv_path, headers: true) do |row|
  next unless row['PROJECT_ID'] == 'ENPv1'
  next if row['NACIMIENTO'] == 'N/A'

  sample = Sample.find_by(old_id: row['SAMPLE-ID'])
  patient = sample.patient
  new_bday = Date.parse(row['NACIMIENTO'])

  if patient.birthdate && patient.birthdate != new_bday
    p sample, patient
    puts " --> #{patient.birthdate} vs. #{new_bday}"
    puts " --> #{row}"

    new_patient = Patient.find_or_create_by(
      first_name: patient.first_name,
      last_name: patient.last_name,
      acronym: patient.acronym,
      birthdate: new_bday
    )
    sample.update(patient: new_patient)

    puts " *NEW* #{new_patient}"
    puts
  else
    patient.update(birthdate: new_bday)
  end
end
