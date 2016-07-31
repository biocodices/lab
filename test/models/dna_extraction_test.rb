require 'test_helper'

class DnaExtractionTest < ActiveSupport::TestCase
  setup do
    @dna_extraction = dna_extractions(:one)
    @control_dna = dna_extractions(:control)
  end

  test 'list DNAs used in libraries' do
    library = libraries(:one)
    library.dna_extractions << @dna_extraction
    library.save!

    assert_includes DnaExtraction.used_in_libraries, @dna_extraction
    assert_not_includes DnaExtraction.unused_in_libraries, @dna_extraction
  end

  test 'list control DNAs' do
    assert_includes DnaExtraction.control, @control_dna
    assert_not_includes DnaExtraction.control, @dna_extraction
  end

  test 'control DNA responds to #patient and #sample' do
    assert_respond_to @control_dna, :patient
    assert_respond_to @control_dna, :sample
  end

end
