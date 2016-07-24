translations = {
  'validacion' => 'validation',
  'demo' => 'demo',
  'comercial' => 'commercial',
  'academico' => 'academic'
}

Sample.find_each do |sample|
  if translations.keys.include? sample.request_category
    puts "##{sample.id} #{sample.request_category} -> #{translations[sample.request_category]}"
    sample.request_category = translations[sample.request_category]
    sample.save!
  end
end
