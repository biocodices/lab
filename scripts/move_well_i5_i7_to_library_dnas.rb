SequencingDna.all.each do |seq_dna|
  puts seq_dna

  library_dna = LibraryDna.find_by(
    dna_extraction: seq_dna.dna_extraction,
    library: seq_dna.dna_extraction.libraries.last
  )

  puts library_dna

  library_dna.update_attributes(
    well: seq_dna.well,
    i5: seq_dna.i5,
    i7: seq_dna.i7
  )

  puts
end
