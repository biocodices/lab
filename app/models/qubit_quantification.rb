class QubitQuantification < ActiveRecord::Base
  belongs_to :dna_sample

  ASSAY_CONCENTRATION_UNIT = 'ng/µL'
  STOCK_CONCENTRATION_UNIT = 'ng/µL'
end
