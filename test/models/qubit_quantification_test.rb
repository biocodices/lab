require 'test_helper'

class QubitQuantificationTest < ActiveSupport::TestCase
  test 'creates new DnaExtractions from csv' do
    DnaExtraction.destroy_all
    assert_difference('DnaExtraction.count', 3) { save_records_from_csv! }
  end

  test 'creates new QubitQuantifications from csv' do
    QubitQuantification.destroy_all
    assert_difference('QubitQuantification.count', 3) { save_records_from_csv! }
  end

  test 'loads the csv data correctly' do
    save_records_from_csv!
    last_qubit_quantification = QubitQuantification.last

    assert_equal 777, last_qubit_quantification.assay_concentration
    assert_equal 'dsDNA BR', last_qubit_quantification.assay_type
    assert_equal 3, last_qubit_quantification.sample_vol
    assert_equal 101.00, last_qubit_quantification.dilution_factor
    assert_equal Date.new(2015, 11, 5), last_qubit_quantification.date
  end

  def save_records_from_csv!
    csv_filepath = File.join(Rails.root, 'test', 'fixtures',
                             'qubit_quantification.csv')
    QubitQuantification.save_records_from_csv! csv_filepath
  end
end
