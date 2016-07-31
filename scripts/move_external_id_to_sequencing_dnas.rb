TemporaryHelperDnaSequencing.all.each do |old|
  puts "#{old.dna_extraction.tag} in seq #{old.sequencing.id} = #{old.external_id}"
  old.dna_extraction.library_dnas.decorate.each do |lib_dna|
    puts " -> #{lib_dna.description}"
  end

  new = SequencingDna.find_by(
    sequencing_id: old.sequencing_id,
    library_dna_id: old.dna_extraction.library_dnas.last.id,
  )
  puts " => #{new.id}"
  new.external_id = old.external_id
  new.save!

  puts
end
