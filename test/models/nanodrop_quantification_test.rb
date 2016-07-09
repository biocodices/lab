require 'test_helper'

class NanodropQuantificationTest < ActiveSupport::TestCase
  setup do
    @nanodrop_quantification = nanodrop_quantifications(:one)
  end

  test 'can parse the TSV' do
    assert_difference('DnaExtraction.count', 2) do
      tsv_filepath = File.join(Rails.root, 'test', 'fixtures',
                              'nanodrop_quantification.tsv')
      NanodropQuantification.save_records_from_tsv! tsv_filepath
    end

    last_nanodrop_quantification = NanodropQuantification.last

    assert_equal 736.89, last_nanodrop_quantification.concentration
    assert_equal 14.738, last_nanodrop_quantification.absorbance_260
    assert_equal 7.814, last_nanodrop_quantification.absorbance_280
    assert_equal 1.89, last_nanodrop_quantification.ratio_260_280
    assert_equal 2.17, last_nanodrop_quantification.ratio_260_230
    assert_equal 'DNA', last_nanodrop_quantification.sample_type
    assert_equal 50.0, last_nanodrop_quantification.factor
    assert_equal Date.new(2015, 10, 9), last_nanodrop_quantification.date
  end

  test 'can associate a DNA Extraction with a Sample' do
    dna_extraction = dna_extractions(:one)
    @nanodrop_quantification.associate_to_dna_extraction!(
      samples(:one).id,
      dna_extraction.id
    )

    assert_equal @nanodrop_quantification.dna_extraction, dna_extraction
  end
end
