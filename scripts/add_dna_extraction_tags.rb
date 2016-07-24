#!/usr/bin/env ruby

DnaExtraction.find_each do |dna_extraction|
  sample = dna_extraction.sample
  sample_extractions = sample.dna_extractions.map(&:id)
  dna_order = sample_extractions.index(dna_extraction.id) + 1
  tag = "#{sample.id}-#{dna_order}"
  puts "#{dna_extraction.id} -> #{tag}"
  dna_extraction.update_attribute(:tag, tag)
end
