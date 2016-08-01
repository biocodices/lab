TemporaryHelperDnaSequencing.all.each do |old|
  # Reads the table dna_extractions_sequencings

  puts "#{old.dna_extraction.tag} in seq #{old.sequencing.id} = #{old.external_id}"
  old.dna_extraction.library_dnas.decorate.each do |lib_dna|
    puts " -> #{lib_dna.description}"
  end

  # Pick the last available LibraryDna from the DnaExtraction
  # This will desambiguate between Lib3 and Lib4 dnas
  lib_dna = old.dna_extraction.library_dnas.last
  
  # Add the corresponding LibraryDna to the Sequencing listed in the row
  sequencing = Sequencing.find(old.sequencing_id)
  sequencing.library_dnas << lib_dna

  # Find the newly created association row in the table sequencing_dnas
  new = SequencingDna.find_by!(
    sequencing_id: sequencing.id,
    library_dna_id: lib_dna.id,
  )
  new.update(external_id: old.external_id) if old.external_id

  puts
end
