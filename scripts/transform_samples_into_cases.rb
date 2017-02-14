Patient.find_each do |patient|
  samples = patient.samples

  # Safety check:
  raise 'many institutions' unless samples.map(&:institution).uniq.count == 1
  raise 'many doctors' unless samples.map(&:doctor_full_name).uniq.count == 1
  raise 'many doctor mails' unless samples.map(&:doctor_email).uniq.count == 1
  raise 'many request dates' unless samples.map(&:request_date).uniq.count == 1
  raise 'many adm dates' unless samples.map(&:admission_date).uniq.count == 1
  raise 'request cat' unless samples.map(&:request_category).uniq.count == 1
  raise 'request projects' unless samples.map(&:project_id).uniq.count == 1

  sample = samples.first
  study = Study.create(
    project_id: sample.project_id,
    patient_id: sample.patient_id,
    note: sample.notes,
    institution: sample.institution,
    doctor_full_name: sample.doctor_full_name,
    doctor_email: sample.doctor_email,
    request_date: sample.request_date,
    admission_date: sample.admission_date,
    request_category: sample.request_category
  )

  samples.each { |spl| spl.update_attribute(:study_id, study.id) }
end
