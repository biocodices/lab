class LibraryDna < ActiveRecord::Base
  self.table_name = 'dna_extractions_libraries'

  belongs_to :library
  belongs_to :dna_extraction

  def to_s
    "<LibraryDna dna: #{dna_extraction.id}, library: #{library.id}>"
  end
end
