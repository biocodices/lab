class NanodropQuantification < ActiveRecord::Base
  belongs_to :dna_sample

  CONCENTRATION_UNIT = 'ng/μl'
end
