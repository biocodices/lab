# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(tag: 'PGSAM', old_id: 'ACGH+MITOGRADE')

Project.create(tag: 'CDP', old_id: 'CARDIOPANEL')

Project.create(tag: 'ELA', old_id: 'ELA')

Project.create(tag: 'ENPv1', old_id: 'ENPv1')

Project.create(tag: 'ENPv2', old_id: 'ENPv2')

Project.create(tag: 'EXOME', old_id: 'EXOMA')

Project.create(tag: 'PGDK', old_id: 'KARYOMAPPING')

Project.create(tag: 'PGSNM', old_id: 'NGS+MITOGRADE')

Project.create(tag: 'PGSA', old_id: 'PGSxACGH')

Project.create(tag: 'PGSN', old_id: 'PGSxNGS')

patient = Patient.find_or_create_by(last_name: "Lucero", first_name: "Diego", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00001', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Hospital De Clínicas', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Almaraz", first_name: "Rosana", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00002', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Hospital De Clínicas', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Martinez", first_name: "Natalia", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: '"Fue corrida con 01 en lugar de ENPv1. Ingreso deciÂ­a "Natalia MartiÂ­n""', request_date: nil, old_id: 'ENPv1_00003', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Hospital De Clínicas', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Siac", first_name: "Julia", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00004', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Hospital De Clínicas', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Gonzalez", first_name: "Graciela", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00005', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Hospital De Clínicas', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Rainz", first_name: "Lorenzo", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00006', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Hospital De Clínicas', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MB", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00007', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "BCR", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00008', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "CC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00009', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "RS", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00010', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "CCA", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00011', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MCC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00012', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "JC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00013', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "EF", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00014', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "LLG", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00015', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "HG", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00016', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Lasca", first_name: "María", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00017', barcode: nil, doctor_email: 'agandersson@neurologiainba.com.ar', doctor_full_name: 'Dr. Andersson', institution: 'Inba', admission_date: nil, request_category: 'demo')

patient = Patient.find_or_create_by(acronym: "ST", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00018', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "DC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00019', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "AS", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00020', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "JP", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00021', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "CA", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00022', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "SMP", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00023', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "ER", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00024', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "EV", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00025', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "DDA", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00026', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "ND", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00027', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "CT", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00028', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MKA", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00029', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "AMC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00030', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "NS", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00031', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MAR", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00032', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "CRP", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00033', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MPC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00034', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Correa Cristaldo", first_name: "Florentina", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00035', barcode: 'PN01BL00001', doctor_email: 'agandersson@neurologiainba.com.ar', doctor_full_name: 'Dr. Andersson', institution: 'Inba', admission_date: nil, request_category: 'comercial')

patient = Patient.find_or_create_by(acronym: "MQ", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00036', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "AC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00037', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MT", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00038', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00039', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "JLA", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00040', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "LM", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00041', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "JLOZ", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00042', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MR", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00043', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MB", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00044', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MCA", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00045', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "ADD", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00046', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "ABD", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00047', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "ES", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00048', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "OS", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00049', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MR", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00050', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "GE", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00051', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "ML", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00052', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "PFA", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00053', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "MT", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00054', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "FC", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00055', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Arquímedes", first_name: "Natoli", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00056', barcode: 'PN01BL00002', doctor_email: 'agandersson@neurologiainba.com.ar', doctor_full_name: 'Dr. Andersson', institution: 'Inba', admission_date: nil, request_category: 'comercial')

patient = Patient.find_or_create_by(last_name: "Herrera", first_name: "Orlando", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: 'Fue corrida con 01 en lugar de ENPv1', request_date: nil, old_id: 'ENPv1_00057', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'academico')

patient = Patient.find_or_create_by(acronym: "AR", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: nil, old_id: 'ENPv1_00058', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "ABU", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: nil, old_id: 'ENPv1_00059', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(acronym: "CM", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: nil, old_id: 'ENPv1_00060', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Jury", first_name: "Ignacio", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: nil, old_id: 'ENPv1_00061', barcode: 'PN01BL00014', doctor_email: 'guillermozeppa@gmail.com', doctor_full_name: 'Dr. Zeppa', institution: 'Hospital Privado', admission_date: nil, request_category: 'demo')

patient = Patient.find_or_create_by(last_name: "Alberto Hugo", first_name: "Cosentino", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: '2016-03-03 00:00:00', old_id: 'ENPv1_00062', barcode: nil, doctor_email: 'agandersson@neurologiainba.com.ar', doctor_full_name: 'Dr. Andersson', institution: 'Inba', admission_date: '2016-03-04 00:00:00', request_category: 'comercial')

patient = Patient.find_or_create_by(last_name: "Dora Violeta", first_name: "Sardo", birthdate: '1944-03-15 00:00:00')
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: '2016-03-03 00:00:00', old_id: 'ENPv1_00063', barcode: nil, doctor_email: 'agandersson@neurologiainba.com.ar', doctor_full_name: 'Dr. Andersson', institution: 'Inba', admission_date: '2016-03-04 00:00:00', request_category: 'comercial')

patient = Patient.find_or_create_by(last_name: "Martin Quinteros", first_name: "Sergio", birthdate: '1969-11-07 00:00:00')
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: '2016-04-06 00:00:00', old_id: 'ENPv1_00064', barcode: 'PN01BL00025', doctor_email: 'lorenatschopp@gmail.com', doctor_full_name: 'Dra. Andrea Lorena Tschopp', institution: 'Hospital Churruca', admission_date: '2016-04-06 00:00:00', request_category: 'demo')

patient = Patient.find_or_create_by(last_name: "Marcela", first_name: "CalderÃ³n", birthdate: '1977-05-20 00:00:00')
Sample.create(patient: patient, project: Project.find_by(old_id: "ENPv1"), notes: nil, request_date: '2016-04-14 00:00:00', old_id: 'ENPv1_00065', barcode: 'PN01BL00022', doctor_email: 'mtela@fleni.org.ar', doctor_full_name: 'Dra. Marcela Tela', institution: 'Hospital Fernández', admission_date: '2016-04-15 00:00:00', request_category: 'demo')

patient = Patient.find_or_create_by(last_name: "Ana", first_name: "Alonso", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "EXOMA"), notes: nil, request_date: nil, old_id: 'EXOME_00001', barcode: nil, doctor_email: nil, doctor_full_name: nil, institution: 'Fleni', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Fernandez García", first_name: "Marina", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00001_e1', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Fernandez García", first_name: "Marina", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00001_e2', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Fernandez García", first_name: "Marina", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00001_e3', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Fernandez García", first_name: "Marina", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00001_e4', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Muñoz", first_name: "Silvia", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00002_e1', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Muñoz", first_name: "Silvia", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00002_e2', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Muñoz", first_name: "Silvia", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00002_e3', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

patient = Patient.find_or_create_by(last_name: "Muñoz", first_name: "Silvia", birthdate: nil)
Sample.create(patient: patient, project: Project.find_by(old_id: "PGSxNGS"), notes: nil, request_date: nil, old_id: 'PGSN_00002_e4', barcode: nil, doctor_email: 'arielahu@hotmail.com', doctor_full_name: 'Ariel Ahumada', institution: 'Procrearte', admission_date: nil, request_category: 'validacion')

sample = Sample.find_by(old_id: "ENPv1_00001")
DnaSample.create(sample: sample, old_id: 'ENPv1_00001')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00001")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 44.2, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 50.11, absorbance_280: 0.531, factor: 50.0, ratio_260_280: 1.89, ratio_260_230: 1.15, absorbance_260: 1.002, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00002")
DnaSample.create(sample: sample, old_id: 'ENPv1_00002')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00002")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 58.8, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 75.51, absorbance_280: 0.81, factor: 50.0, ratio_260_280: 1.86, ratio_260_230: 1.34, absorbance_260: 1.51, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00003")
DnaSample.create(sample: sample, old_id: 'ENPv1_00003')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00003")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 112.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 134.89, absorbance_280: 1.434, factor: 50.0, ratio_260_280: 1.88, ratio_260_230: 1.74, absorbance_260: 2.698, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00004")
DnaSample.create(sample: sample, old_id: 'ENPv1_00004')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00004")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 92.4, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 113.99, absorbance_280: 1.217, factor: 50.0, ratio_260_280: 1.87, ratio_260_230: 1.7, absorbance_260: 2.28, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00005")
DnaSample.create(sample: sample, old_id: 'ENPv1_00005')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00005")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 53.9, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 67.65, absorbance_280: 0.728, factor: 50.0, ratio_260_280: 1.86, ratio_260_230: 1.31, absorbance_260: 1.353, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00006")
DnaSample.create(sample: sample, old_id: 'ENPv1_00006')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00006")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 96.1, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 112.29, absorbance_280: 1.25, factor: 50.0, ratio_260_280: 1.8, ratio_260_230: 1.31, absorbance_260: 2.246, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00007")
DnaSample.create(sample: sample, old_id: 'ENPv1_00007')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00007")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 89.3, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 107.57, absorbance_280: 1.145, factor: 50.0, ratio_260_280: 1.88, ratio_260_230: 1.7, absorbance_260: 2.151, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00008")
DnaSample.create(sample: sample, old_id: 'ENPv1_00008')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00008")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 139.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 142.86, absorbance_280: 1.529, factor: 50.0, ratio_260_280: 1.87, ratio_260_230: 1.8, absorbance_260: 2.857, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00009")
DnaSample.create(sample: sample, old_id: 'ENPv1_00009')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00009")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 89.3, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 93.3, absorbance_280: 0.991, factor: 50.0, ratio_260_280: 1.88, ratio_260_230: 1.63, absorbance_260: 1.866, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00010")
DnaSample.create(sample: sample, old_id: 'ENPv1_00010')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00010")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 75.5, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 99.35, absorbance_280: 1.043, factor: 50.0, ratio_260_280: 1.9, ratio_260_230: 1.56, absorbance_260: 1.987, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00011")
DnaSample.create(sample: sample, old_id: 'ENPv1_00011')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00011")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 137.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 152.52, absorbance_280: 1.635, factor: 50.0, ratio_260_280: 1.87, ratio_260_230: 1.91, absorbance_260: 3.05, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00012")
DnaSample.create(sample: sample, old_id: 'ENPv1_00012')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00012")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 570.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 520.72, absorbance_280: 5.707, factor: 50.0, ratio_260_280: 1.82, ratio_260_230: 2.4, absorbance_260: 10.414, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00013")
DnaSample.create(sample: sample, old_id: 'ENPv1_00013')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00013")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 320.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 459.72, absorbance_280: 5.069, factor: 50.0, ratio_260_280: 1.81, ratio_260_230: 2.28, absorbance_260: 9.194, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00014")
DnaSample.create(sample: sample, old_id: 'ENPv1_00014')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00014")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 289.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 321.5, absorbance_280: 3.507, factor: 50.0, ratio_260_280: 1.83, ratio_260_230: 2.31, absorbance_260: 6.43, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00015")
DnaSample.create(sample: sample, old_id: 'ENPv1_00015')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00015")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 349.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 321.16, absorbance_280: 3.492, factor: 50.0, ratio_260_280: 1.84, ratio_260_230: 2.2, absorbance_260: 6.42, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00016")
DnaSample.create(sample: sample, old_id: 'ENPv1_00016')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00016")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 205.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 495.71, absorbance_280: 5.462, factor: 50.0, ratio_260_280: 1.82, ratio_260_230: 2.29, absorbance_260: 9.914, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00017")
DnaSample.create(sample: sample, old_id: 'ENPv1_00017')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00017")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 255.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 219.69, absorbance_280: 2.378, factor: 50.0, ratio_260_280: 1.85, ratio_260_230: 2.31, absorbance_260: 4.394, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00018")
DnaSample.create(sample: sample, old_id: 'ENPv1_00018')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00018")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 35.4, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 38.66, absorbance_280: 0.436, factor: 50.0, ratio_260_280: 1.77, ratio_260_230: 2.06, absorbance_260: 0.773, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00019")
DnaSample.create(sample: sample, old_id: 'ENPv1_00019')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00019")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 109.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 736.89, absorbance_280: 7.814, factor: 50.0, ratio_260_280: 1.89, ratio_260_230: 2.17, absorbance_260: 14.738, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00020")
DnaSample.create(sample: sample, old_id: 'ENPv1_00020')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00020")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 81.3, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 71.59, absorbance_280: 0.763, factor: 50.0, ratio_260_280: 1.88, ratio_260_230: 2.23, absorbance_260: 1.432, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00021")
DnaSample.create(sample: sample, old_id: 'ENPv1_00021')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00021")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 151.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 102.09, absorbance_280: 1.092, factor: 50.0, ratio_260_280: 1.87, ratio_260_230: 2.13, absorbance_260: 2.042, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00022")
DnaSample.create(sample: sample, old_id: 'ENPv1_00022')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00022")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 118.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 103.3, absorbance_280: 1.1, factor: 50.0, ratio_260_280: 1.88, ratio_260_230: 2.19, absorbance_260: 2.066, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00023")
DnaSample.create(sample: sample, old_id: 'ENPv1_00023')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00023")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 85.8, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 78.47, absorbance_280: 0.88, factor: 50.0, ratio_260_280: 1.78, ratio_260_230: 1.59, absorbance_260: 1.569, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00024")
DnaSample.create(sample: sample, old_id: 'ENPv1_00024')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00024")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 83.1, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 1266.24, absorbance_280: 13.399, factor: 50.0, ratio_260_280: 1.89, ratio_260_230: 2.3, absorbance_260: 25.325, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00025")
DnaSample.create(sample: sample, old_id: 'ENPv1_00025')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00025")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 75.1, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 85.02, absorbance_280: 1.021, factor: 50.0, ratio_260_280: 1.67, ratio_260_230: 1.43, absorbance_260: 1.7, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00026")
DnaSample.create(sample: sample, old_id: 'ENPv1_00026')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00026")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 116.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 1679.68, absorbance_280: 18.042, factor: 50.0, ratio_260_280: 1.86, ratio_260_230: 2.28, absorbance_260: 33.594, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00027")
DnaSample.create(sample: sample, old_id: 'ENPv1_00027')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00027")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 229.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 401.15, absorbance_280: 4.305, factor: 50.0, ratio_260_280: 1.86, ratio_260_230: 2.35, absorbance_260: 8.023, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00028")
DnaSample.create(sample: sample, old_id: 'ENPv1_00028')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00028")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 135.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 1994.99, absorbance_280: 21.173, factor: 50.0, ratio_260_280: 1.88, ratio_260_230: 2.19, absorbance_260: 39.9, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00029")
DnaSample.create(sample: sample, old_id: 'ENPv1_00029')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00029")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 163.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 113.23, absorbance_280: 1.209, factor: 50.0, ratio_260_280: 1.87, ratio_260_230: 1.39, absorbance_260: 2.265, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00030")
DnaSample.create(sample: sample, old_id: 'ENPv1_00030')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00030")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 181.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 155.8, absorbance_280: 1.693, factor: 50.0, ratio_260_280: 1.84, ratio_260_230: 1.64, absorbance_260: 3.116, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00031")
DnaSample.create(sample: sample, old_id: 'ENPv1_00031')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00031")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 103.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 76.26, absorbance_280: 0.862, factor: 50.0, ratio_260_280: 1.77, ratio_260_230: 0.97, absorbance_260: 1.525, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00032")
DnaSample.create(sample: sample, old_id: 'ENPv1_00032')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00032")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 266.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 68.07, absorbance_280: 0.739, factor: 50.0, ratio_260_280: 1.84, ratio_260_230: 2.28, absorbance_260: 1.361, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00033")
DnaSample.create(sample: sample, old_id: 'ENPv1_00033')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00033")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 281.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 95.63, absorbance_280: 1.039, factor: 50.0, ratio_260_280: 1.84, ratio_260_230: 2.28, absorbance_260: 1.913, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00034")
DnaSample.create(sample: sample, old_id: 'ENPv1_00034')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00034")
QubitQuantification.create(dilution_factor: 100.0, stock_concentration: nil, std2_rfu: nil, green_rfu: nil, assay_type: 'dsDNABR', assay_concentration: 326.0, sample_vol: 2.0, far_red_rfu: nil, excitation: nil, std3_rfu: nil, std1_rfu: nil, dna_sample: dna_sample)
NanodropQuantification.create(concentration: 503.56, absorbance_280: 5.45, factor: 50.0, ratio_260_280: 1.85, ratio_260_230: 2.3, absorbance_260: 10.071, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00035")
DnaSample.create(sample: sample, old_id: 'ENPv1_00035')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00035")
NanodropQuantification.create(concentration: 150.0, absorbance_280: 1.78, factor: 50.0, ratio_260_280: 1.8, ratio_260_230: 2.35, absorbance_260: 3.2, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00036")
DnaSample.create(sample: sample, old_id: 'ENPv1_00036')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00036")
NanodropQuantification.create(concentration: 293.88, absorbance_280: 3.138, factor: 50.0, ratio_260_280: 1.87, ratio_260_230: 2.43, absorbance_260: 5.878, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00037")
DnaSample.create(sample: sample, old_id: 'ENPv1_00037')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00037")
NanodropQuantification.create(concentration: 173.1, absorbance_280: 1.801, factor: 50.0, ratio_260_280: 1.92, ratio_260_230: 2.49, absorbance_260: 3.462, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00038")
DnaSample.create(sample: sample, old_id: 'ENPv1_00038')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00038")
NanodropQuantification.create(concentration: 164.35, absorbance_280: 1.769, factor: 50.0, ratio_260_280: 1.86, ratio_260_230: 2.35, absorbance_260: 3.287, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00039")
DnaSample.create(sample: sample, old_id: 'ENPv1_00039')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00039")
NanodropQuantification.create(concentration: 198.27, absorbance_280: 2.126, factor: 50.0, ratio_260_280: 1.86, ratio_260_230: 2.28, absorbance_260: 3.965, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00040")
DnaSample.create(sample: sample, old_id: 'ENPv1_00040')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00040")
NanodropQuantification.create(concentration: 77.72, absorbance_280: 0.818, factor: 50.0, ratio_260_280: 1.9, ratio_260_230: 2.3, absorbance_260: 1.554, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00041")
DnaSample.create(sample: sample, old_id: 'ENPv1_00041')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00041")
NanodropQuantification.create(concentration: 223.13, absorbance_280: 2.451, factor: 50.0, ratio_260_280: 1.82, ratio_260_230: 2.27, absorbance_260: 4.463, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00042")
DnaSample.create(sample: sample, old_id: 'ENPv1_00042')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00042")
NanodropQuantification.create(concentration: 120.21, absorbance_280: 1.274, factor: 50.0, ratio_260_280: 1.89, ratio_260_230: 2.39, absorbance_260: 2.404, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00043")
DnaSample.create(sample: sample, old_id: 'ENPv1_00043')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00043")
NanodropQuantification.create(concentration: 219.65, absorbance_280: 2.305, factor: 50.0, ratio_260_280: 1.91, ratio_260_230: 2.48, absorbance_260: 4.393, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00044")
DnaSample.create(sample: sample, old_id: 'ENPv1_00044')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00044")
NanodropQuantification.create(concentration: 142.97, absorbance_280: 1.53, factor: 50.0, ratio_260_280: 1.53, ratio_260_230: 4.0, absorbance_260: 2.859, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00044")
DnaSample.create(sample: sample, old_id: 'ENPv1_00044_reext1')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00044_reext1")
NanodropQuantification.create(concentration: 58.1, absorbance_280: 0.664, factor: 50.0, ratio_260_280: 1.75, ratio_260_230: 2.0, absorbance_260: 1.162, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00045")
DnaSample.create(sample: sample, old_id: 'ENPv1_00045')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00045")
NanodropQuantification.create(concentration: 21.98, absorbance_280: 0.215, factor: 50.0, ratio_260_280: 2.05, ratio_260_230: 2.53, absorbance_260: 0.44, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00046")
DnaSample.create(sample: sample, old_id: 'ENPv1_00046')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00046")
NanodropQuantification.create(concentration: 116.13, absorbance_280: 1.222, factor: 50.0, ratio_260_280: 1.9, ratio_260_230: 2.34, absorbance_260: 2.323, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00047")
DnaSample.create(sample: sample, old_id: 'ENPv1_00047')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00047")
NanodropQuantification.create(concentration: 127.74, absorbance_280: 1.277, factor: 50.0, ratio_260_280: 1.86, ratio_260_230: 2.28, absorbance_260: 2.555, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00048")
DnaSample.create(sample: sample, old_id: 'ENPv1_00048')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00048")
NanodropQuantification.create(concentration: 36.73, absorbance_280: 0.407, factor: 50.0, ratio_260_280: 1.81, ratio_260_230: 2.31, absorbance_260: 0.735, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00049")
DnaSample.create(sample: sample, old_id: 'ENPv1_00049')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00049")
NanodropQuantification.create(concentration: 64.3, absorbance_280: 0.65, factor: 50.0, ratio_260_280: 1.98, ratio_260_230: 2.46, absorbance_260: 1.286, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00050")
DnaSample.create(sample: sample, old_id: 'ENPv1_00050')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00050")
NanodropQuantification.create(concentration: 101.22, absorbance_280: 1.085, factor: 50.0, ratio_260_280: 1.87, ratio_260_230: 2.32, absorbance_260: 2.024, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00051")
DnaSample.create(sample: sample, old_id: 'ENPv1_00051')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00051")
NanodropQuantification.create(concentration: 26.1, absorbance_280: 0.305, factor: 50.0, ratio_260_280: 1.71, ratio_260_230: 1.97, absorbance_260: 0.521, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00051")
DnaSample.create(sample: sample, old_id: 'ENPv1_00051_PRUEBA1/2sangre')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00051_PRUEBA1/2sangre")
NanodropQuantification.create(concentration: 14.3, absorbance_280: 0.17, factor: 50.0, ratio_260_280: 1.69, ratio_260_230: 0.94, absorbance_260: 0.287, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00051")
DnaSample.create(sample: sample, old_id: 'ENPv1_00051_PRUEBA30mininc')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00051_PRUEBA30mininc")
NanodropQuantification.create(concentration: 25.9, absorbance_280: 0.288, factor: 50.0, ratio_260_280: 1.8, ratio_260_230: 2.51, absorbance_260: 0.518, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00051")
DnaSample.create(sample: sample, old_id: 'ENPv1_00051_PRUEBA40ulPK')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00051_PRUEBA40ulPK")
NanodropQuantification.create(concentration: 29.0, absorbance_280: 0.321, factor: 50.0, ratio_260_280: 1.8, ratio_260_230: 2.72, absorbance_260: 0.579, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00052")
DnaSample.create(sample: sample, old_id: 'ENPv1_00052')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00052")
NanodropQuantification.create(concentration: 33.5, absorbance_280: 0.37, factor: 50.0, ratio_260_280: 1.81, ratio_260_230: 2.35, absorbance_260: 0.67, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00053")
DnaSample.create(sample: sample, old_id: 'ENPv1_00053')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00053")
NanodropQuantification.create(concentration: 27.0, absorbance_280: 0.304, factor: 50.0, ratio_260_280: 1.78, ratio_260_230: 1.68, absorbance_260: 0.54, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00054")
DnaSample.create(sample: sample, old_id: 'ENPv1_00054')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00054")
NanodropQuantification.create(concentration: 29.4, absorbance_280: 0.325, factor: 50.0, ratio_260_280: 1.81, ratio_260_230: 1.86, absorbance_260: 0.588, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00054")
DnaSample.create(sample: sample, old_id: 'ENPv1_00054_reext1')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00054_reext1")
NanodropQuantification.create(concentration: 32.4, absorbance_280: 0.367, factor: 50.0, ratio_260_280: 1.76, ratio_260_230: 1.71, absorbance_260: 0.648, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00055")
DnaSample.create(sample: sample, old_id: 'ENPv1_00055')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00055")
NanodropQuantification.create(concentration: 66.9, absorbance_280: 0.749, factor: 50.0, ratio_260_280: 1.79, ratio_260_230: 2.42, absorbance_260: 1.339, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00056")
DnaSample.create(sample: sample, old_id: 'ENPv1_00056')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00056")
NanodropQuantification.create(concentration: 35.3, absorbance_280: 0.414, factor: 50.0, ratio_260_280: 1.7, ratio_260_230: 1.69, absorbance_260: 0.706, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00057")
DnaSample.create(sample: sample, old_id: 'ENPv1_00057')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00057")
NanodropQuantification.create(concentration: 45.7, absorbance_280: 0.56, factor: 50.0, ratio_260_280: 1.63, ratio_260_230: 0.9, absorbance_260: 0.914, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00057")
DnaSample.create(sample: sample, old_id: 'ENPv1_00057_reext1')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00057_reext1")
NanodropQuantification.create(concentration: 23.2, absorbance_280: 0.281, factor: 50.0, ratio_260_280: 1.65, ratio_260_230: 2.48, absorbance_260: 0.464, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00058")
DnaSample.create(sample: sample, old_id: 'ENPv1_00058')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00058")
NanodropQuantification.create(concentration: 44.5, absorbance_280: 0.501, factor: 50.0, ratio_260_280: 1.78, ratio_260_230: 2.28, absorbance_260: 0.89, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00059")
DnaSample.create(sample: sample, old_id: 'ENPv1_00059')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00059")
NanodropQuantification.create(concentration: 36.6, absorbance_280: 0.405, factor: 50.0, ratio_260_280: 1.81, ratio_260_230: 2.75, absorbance_260: 0.732, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00060")
DnaSample.create(sample: sample, old_id: 'ENPv1_00060')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00060")
NanodropQuantification.create(concentration: 38.0, absorbance_280: 0.441, factor: 50.0, ratio_260_280: 1.72, ratio_260_230: 2.06, absorbance_260: 0.759, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00061")
DnaSample.create(sample: sample, old_id: 'ENPv1_00061')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00061")
NanodropQuantification.create(concentration: 51.9, absorbance_280: 0.626, factor: 50.0, ratio_260_280: 1.66, ratio_260_230: 1.69, absorbance_260: 1.038, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00062")
DnaSample.create(sample: sample, old_id: 'ENPv1_00062')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00062")
NanodropQuantification.create(concentration: 60.3, absorbance_280: 0.728, factor: 50.0, ratio_260_280: 1.66, ratio_260_230: 0.81, absorbance_260: 1.206, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00063")
DnaSample.create(sample: sample, old_id: 'ENPv1_00063')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00063")
NanodropQuantification.create(concentration: 70.4, absorbance_280: 0.808, factor: 50.0, ratio_260_280: 1.74, ratio_260_230: 1.75, absorbance_260: 1.408, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00064")
DnaSample.create(sample: sample, old_id: 'ENPv1_00064')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00064")
NanodropQuantification.create(concentration: 33.5, absorbance_280: 0.415, factor: 50.0, ratio_260_280: 1.61, ratio_260_230: 0.68, absorbance_260: 0.669, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00064")
DnaSample.create(sample: sample, old_id: 'ENPv1_00064_reext1')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00064_reext1")
NanodropQuantification.create(concentration: 29.9, absorbance_280: 0.378, factor: 50.0, ratio_260_280: 1.58, ratio_260_230: 0.81, absorbance_260: 0.598, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "ENPv1_00065")
DnaSample.create(sample: sample, old_id: 'ENPv1_00065')
dna_sample = DnaSample.find_by(old_id: "ENPv1_00065")
NanodropQuantification.create(concentration: 43.8, absorbance_280: 0.502, factor: 50.0, ratio_260_280: 1.74, ratio_260_230: 1.62, absorbance_260: 0.875, sample_type: 'DNA', dna_sample: dna_sample)

sample = Sample.find_by(old_id: "EXOME_00001")
DnaSample.create(sample: sample, old_id: 'EXOME_00001')
dna_sample = DnaSample.find_by(old_id: "EXOME_00001")
NanodropQuantification.create(concentration: 38.8, absorbance_280: 0.471, factor: 50.0, ratio_260_280: 1.64, ratio_260_230: 0.88, absorbance_260: 0.775, sample_type: 'DNA', dna_sample: dna_sample)

Library.create(hyp: 'TC-0048352-HYP', fpu: 'TC-0051588-FPU', laboratory: 'INTA', clp: 'LP-0039595-CLP', old_id: 'ENPv1_LIB_00001', pre_pcr_date: Date.parse("17/10/2015"), iap: 'TC-0047786-IAP', notes: nil, lnp: 'LP-0040314-LNP', post_pcr_date: Date.parse("18/10/2015"), sgp: 'LP-0040812-SGP', pcr_date: Date.parse("17/10/2015"))

Library.create(hyp: 'TC-0048353-HYP', fpu: 'TC-0051588-FPU', laboratory: 'INTA', clp: 'LP-0039596-CLP', old_id: 'ENPv1_LIB_00002', pre_pcr_date: Date.parse("09/11/2015"), iap: 'TC-0047787-IAP', notes: nil, lnp: 'LP-0040315-LNP', post_pcr_date: Date.parse("10/11/2015"), sgp: 'LP-0040813-SGP', pcr_date: Date.parse("09/11/2015"))

Library.create(hyp: 'TC-0048354-HYP', fpu: 'TC-0051589-FPU', laboratory: 'INTA', clp: 'LP-0039597-CLP', old_id: 'ENPv1_LIB_00003', pre_pcr_date: Date.parse("28/12/2015"), iap: 'TC-0047788-IAP', notes: 'Error con placa FPU, no se obtuvieron amplificaciones. Se descartó ENPv1_LIB_3', lnp: 'LP-0040316-LNP', post_pcr_date: nil, sgp: 'LP-0040814-SGP', pcr_date: Date.parse("28/12/2015"))

Library.create(hyp: 'TC-0048355-HYP', fpu: 'TC-0051590-FPU', laboratory: 'INTA', clp: 'LP-0039598-CLP', old_id: 'ENPv1_LIB_00004', pre_pcr_date: Date.parse("04/01/2016"), iap: 'TC-0047789-IAP', notes: nil, lnp: 'LP-0040317-LNP', post_pcr_date: Date.parse("05/01/2016"), sgp: 'LP-0040815-SGP', pcr_date: Date.parse("04/01/2016"))

Sequencing.create(cycles_reads_2: '151', dal: 'LP-0041779-DAL', old_id: 'NGS_00001', read_type: 'Paired End', sample_prep_kit: 'TruSeq Amplicon', run_date: nil, index_reads: '2', notes: nil, investigator_name: 'INTA', cycles_reads_1: '151', pre_seq_date: nil, pal: 'LP-0039513-PAL', pre_seq_notes: 'DAL = 6 µl (18 µl PAL + 2 µl PhiX 12,5 pM) + 594 µl HT1', rcb: nil)

Sequencing.create(cycles_reads_2: '151', dal: 'LP-0041780-DAL', old_id: 'NGS_00002', read_type: 'Paired End', sample_prep_kit: 'TruSeq Amplicon', run_date: nil, index_reads: '2', notes: 'Falló corrida, no clusterizó', investigator_name: 'INTA', cycles_reads_1: '151', pre_seq_date: nil, pal: 'LP-0039514-PAL', pre_seq_notes: 'DAL = 9 µl (18 µl PAL + 2 µl PhiX 12,5 pM) + 591 µl HT1', rcb: nil)

Sequencing.create(cycles_reads_2: '151', dal: 'LP-0041780-DAL', old_id: 'NGS_00003', read_type: 'Paired End', sample_prep_kit: 'TruSeq Amplicon', run_date: nil, index_reads: '2', notes: nil, investigator_name: 'INTA', cycles_reads_1: '151', pre_seq_date: nil, pal: 'LP-0039514-PAL', pre_seq_notes: 'DAL = 9 µl (18 µl PAL + 2 µl PhiX 12,5 pM) + 591 µl HT1', rcb: nil)

Sequencing.create(cycles_reads_2: '151', dal: 'LP-0041781-DAL', old_id: 'NGS_00004', read_type: 'Paired End', sample_prep_kit: 'TruSeq Amplicon', run_date: nil, index_reads: '2', notes: 'Corrida con cartucho normal (no nano)', investigator_name: 'INTA', cycles_reads_1: '151', pre_seq_date: nil, pal: 'LP-0039515-PAL', pre_seq_notes: 'DAL = 6 µl (18 µl PAL + 1 µl PhiX 12,5 pM + 1 µl Coxiella) + 594 µl HT1', rcb: nil)

dna_sample = DnaSample.find_by(old_id: "ENPv1_00001")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00002")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00003")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00004")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00005")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00006")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00007")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00008")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00009")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00010")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00011")
library = Library.find_by(old_id: "ENPv1_LIB_00001")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00012")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00013")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00014")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00015")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00016")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00017")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00018")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00019")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00020")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00021")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00022")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00023")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00024")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00025")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00026")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00027")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00028")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00029")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00030")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00031")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00032")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00033")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00034")
library = Library.find_by(old_id: "ENPv1_LIB_00002")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00035")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00036")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00037")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00038")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00039")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00040")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00041")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00042")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00043")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00044")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00045")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00046")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00047")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00048")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00049")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00050")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00051")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00052")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00053")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00054")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00055")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00056")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00057")
library = Library.find_by(old_id: "ENPv1_LIB_00003")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00035")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00036")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00037")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00038")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00039")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00040")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00041")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00042")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00043")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00044_reext1")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00045")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00046")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00047")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00048")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00049")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00050")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00051")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00052")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00053")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00054_reext1")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00055")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00056")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00057_reext1")
library = Library.find_by(old_id: "ENPv1_LIB_00004")
library.dna_samples << dna_sample

dna_sample = DnaSample.find_by(old_id: "ENPv1_00001")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B1", i7: "A702", i5: "A505", external_id: "SAR093-2015-01-00001")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00002")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C1", i7: "A702", i5: "A506", external_id: "SAR094-2015-01-00002")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00003")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D1", i7: "A702", i5: "A508", external_id: "SAR095-2015-01-00003")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00004")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E1", i7: "A710", i5: "A503", external_id: "SAR096-2015-01-00004")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00005")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F1", i7: "A710", i5: "A505", external_id: "SAR097-2015-01-00005")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00006")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G1", i7: "A710", i5: "A506", external_id: "SAR098-2015-01-00006")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00007")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "H1", i7: "A710", i5: "A508", external_id: "SAR099-2015-01-00007")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00008")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A2", i7: "A711", i5: "A503", external_id: "SAR100-2015-01-00008")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00009")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B2", i7: "A711", i5: "A505", external_id: "SAR101-2015-01-00009")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00010")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C2", i7: "A711", i5: "A506", external_id: "SAR102-2015-01-00010")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00011")
sequencing = Sequencing.find_by(old_id: "NGS_00001")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D2", i7: "A711", i5: "A508", external_id: "SAR103-2015-01-00011")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00012")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A1", i7: "A701", i5: "A501", external_id: "SAR111-2015-0100012")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00013")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B1", i7: "A701", i5: "A502", external_id: "SAR112-2015-0100013")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00014")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C1", i7: "A701", i5: "A503", external_id: "SAR113-2015-0100014")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00015")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D1", i7: "A701", i5: "A504", external_id: "SAR114-2015-0100015")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00016")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E1", i7: "A701", i5: "A505", external_id: "SAR115-2015-0100016")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00017")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F1", i7: "A701", i5: "A506", external_id: "SAR116-2015-0100017")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00018")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G1", i7: "A701", i5: "A507", external_id: "SAR117-2015-0100018")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00019")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "H1", i7: "A701", i5: "A508", external_id: "SAR118-2015-0100019")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00020")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A2", i7: "A702", i5: "A501", external_id: "SAR119-2015-0100020")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00021")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B2", i7: "A702", i5: "A502", external_id: "SAR120-2015-0100021")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00022")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C2", i7: "A702", i5: "A504", external_id: "SAR121-2015-0100022")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00023")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D2", i7: "A702", i5: "A507", external_id: "SAR122-2015-0100023")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00024")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E2", i7: "A703", i5: "A501", external_id: "SAR123-2015-0100024")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00025")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F2", i7: "A703", i5: "A502", external_id: "SAR124-2015-0100025")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00026")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G2", i7: "A703", i5: "A503", external_id: "SAR125-2015-0100026")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00027")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "H2", i7: "A703", i5: "A504", external_id: "SAR126-2015-0100027")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00028")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A2", i7: "A703", i5: "A505", external_id: "SAR127-2015-0100028")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00029")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B3", i7: "A703", i5: "A506", external_id: "SAR128-2015-0100029")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00030")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C3", i7: "A703", i5: "A507", external_id: "SAR129-2015-0100030")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00031")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D3", i7: "A703", i5: "A508", external_id: "SAR130-2015-0100031")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00032")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E3", i7: "A704", i5: "A501", external_id: "SAR131-2015-0100032")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00033")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F3", i7: "A704", i5: "A502", external_id: "SAR131-2015-0100034_S22")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00034")
sequencing = Sequencing.find_by(old_id: "NGS_00002")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G3", i7: "A704", i5: "A503", external_id: "SAR133-2015-0100034_S23")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00012")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A1", i7: "A705", i5: "A501", external_id: "SAR111-2015-0100012")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00013")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B1", i7: "A705", i5: "A502", external_id: "SAR112-2015-0100013")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00014")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C1", i7: "A705", i5: "A503", external_id: "SAR113-2015-0100014")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00015")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D1", i7: "A705", i5: "A504", external_id: "SAR114-2015-0100015")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00016")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E1", i7: "A705", i5: "A505", external_id: "SAR115-2015-0100016")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00017")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F1", i7: "A705", i5: "A506", external_id: "SAR116-2015-0100017")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00018")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G1", i7: "A705", i5: "A507", external_id: "SAR117-2015-0100018")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00019")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "H1", i7: "A705", i5: "A508", external_id: "SAR118-2015-0100019")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00020")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A2", i7: "A706", i5: "A501", external_id: "SAR119-2015-0100020")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00021")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B2", i7: "A706", i5: "A502", external_id: "SAR120-2015-0100021")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00022")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C2", i7: "A706", i5: "A503", external_id: "SAR121-2015-0100022")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00023")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D2", i7: "A706", i5: "A504", external_id: "SAR122-2015-0100023")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00024")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E2", i7: "A706", i5: "A505", external_id: "SAR123-2015-0100024")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00025")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F2", i7: "A706", i5: "A506", external_id: "SAR124-2015-0100025")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00026")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G2", i7: "A706", i5: "A507", external_id: "SAR125-2015-0100026")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00027")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "H2", i7: "A706", i5: "A508", external_id: "SAR126-2015-0100027")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00028")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A2", i7: "A707", i5: "A501", external_id: "SAR127-2015-0100028")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00029")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B3", i7: "A707", i5: "A502", external_id: "SAR128-2015-0100029")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00030")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C3", i7: "A707", i5: "A503", external_id: "SAR129-2015-0100030")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00031")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D3", i7: "A707", i5: "A504", external_id: "SAR130-2015-0100031")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00032")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E3", i7: "A707", i5: "A505", external_id: "SAR131-2015-0100032")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00033")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F3", i7: "A704", i5: "A502", external_id: "SAR131-2015-0100034_S22")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00034")
sequencing = Sequencing.find_by(old_id: "NGS_00003")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G3", i7: "A704", i5: "A503", external_id: "SAR133-2015-0100034_S23")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00002")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C1", i7: "A702", i5: "A506", external_id: "SAR094Rec-01-00002")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00005")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F1", i7: "A710", i5: "A505", external_id: "SAR097Rec-01-00005")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00035")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A1", i7: "A705", i5: "A501", external_id: "SAR135-01-00035")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00036")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B1", i7: "A705", i5: "A502", external_id: "SAR136-01-00036")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00037")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C1", i7: "A705", i5: "A503", external_id: "SAR137-01-00037")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00038")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D1", i7: "A705", i5: "A504", external_id: "SAR138-01-00038")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00039")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E1", i7: "A705", i5: "A505", external_id: "SAR139-01-00039")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00040")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F1", i7: "A705", i5: "A506", external_id: "SAR140-01-00040")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00041")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G1", i7: "A705", i5: "A507", external_id: "SAR141-01-00041")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00042")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "H1", i7: "A705", i5: "A508", external_id: "SAR142-01-00042")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00043")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A2", i7: "A706", i5: "A501", external_id: "SAR143-01-00043")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00044_reext1")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B2", i7: "A706", i5: "A502", external_id: "SAR144-01-00044")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00045")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C2", i7: "A706", i5: "A503", external_id: "SAR145-01-00045")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00046")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D2", i7: "A706", i5: "A504", external_id: "SAR146-01-00046")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00047")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E2", i7: "A706", i5: "A505", external_id: "SAR147-01-00047")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00048")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F2", i7: "A706", i5: "A506", external_id: "SAR148-01-00048")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00049")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G2", i7: "A706", i5: "A507", external_id: "SAR149-01-00049")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00050")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "H2", i7: "A706", i5: "A508", external_id: "SAR150-01-00050")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00051")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "A2", i7: "A707", i5: "A501", external_id: "SAR151-01-00051")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00052")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "B3", i7: "A707", i5: "A502", external_id: "SAR152-01-00052")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00053")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "C3", i7: "A707", i5: "A503", external_id: "SAR153-01-00053")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00054_reext1")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "D3", i7: "A707", i5: "A504", external_id: "SAR154-01-00054")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00055")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "E3", i7: "A707", i5: "A505", external_id: "SAR155-01-00055")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00056")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "F3", i7: "A707", i5: "A506", external_id: "SAR156-01-00056")

dna_sample = DnaSample.find_by(old_id: "ENPv1_00057_reext1")
sequencing = Sequencing.find_by(old_id: "NGS_00004")
sequencing.dna_samples << dna_sample
assoc = DnaSequencing.find_by(dna_sample: dna_sample, sequencing: sequencing)
assoc.update(well: "G3", i7: "A707", i5: "A507", external_id: "SAR157-01-00057")

