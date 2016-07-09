require 'test_helper'

class QubitQuantificationTest < ActiveSupport::TestCase
  test 'can parse the CSV' do
    assert_difference('DnaExtraction.count', 2) do
      csv_filepath = File.join(Rails.root, 'test', 'fixtures',
                               'qubit_quantification.csv')
      QubitQuantification.save_records_from_csv! csv_filepath
    end

    last_qubit_quantification = QubitQuantification.last

    assert_equal 777, last_qubit_quantification.assay_concentration
    assert_equal 'dsDNA BR', last_qubit_quantification.assay_type
    assert_equal 3, last_qubit_quantification.sample_vol
    assert_equal 101.00, last_qubit_quantification.dilution_factor
    assert_equal Date.new(2015, 11, 5), last_qubit_quantification.date
  end
end
