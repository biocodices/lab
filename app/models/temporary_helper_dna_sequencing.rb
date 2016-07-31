class TemporaryHelperDnaSequencing < ActiveRecord::Base
  # Class created just to aid a restructuring of the database.
  # It's used in scripts/associate_sequencings_and_library_dnas.rb
  # And it deals with a db table that will later be dropped.

  self.table_name = 'dna_extractions_sequencings'

  belongs_to :sequencing
  belongs_to :dna_extraction
end
