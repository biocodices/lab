require 'csv'

class QubitQuantification < ActiveRecord::Base
  belongs_to :dna_sample

  ASSAY_CONCENTRATION_UNIT = 'ng/µL'.freeze
  STOCK_CONCENTRATION_UNIT = 'ng/µL'.freeze

  def self.save_records_from_csv!(csv_filepath)
    table = CSV.read(csv_filepath, encoding: 'iso-8859-1:utf-8', headers: true)

    records = []
    table.each do |row|
      qubit = QubitQuantification.new

      # qubit.dna_sample = ... ?
      # row["Name"]  #old sample_id
      qubit.assay_type = row['Assay Type']
      qubit.assay_concentration = row['Assay Conc.'].to_i if row['Assay Conc.']
      qubit.stock_concentration = row['Stock Conc.'].to_i if row['Stock Conc.']
      qubit.sample_vol = row['Sample Vol (µL)'].to_i if row['Sample Vol (µL)']
      qubit.dilution_factor = row['Dilution Factor'].to_f if row['Dilution Factor']
      qubit.std1_rfu = row['Std 1 RFU']
      qubit.std2_rfu = row['Std 2 RFU']
      qubit.std3_rfu = row['Std 3 RFU']
      qubit.excitation = row['Excitation']
      qubit.green_rfu = row['Green RFU']
      qubit.far_red_rfu = row['Far Red RFU']

      # qubit.date = Date.parse(row['Date and Time'])

      # qubit.save
      records << qubit
    end

    records
  end

  private_class_method

  def self.parse_number_string(str)
    return str if !str

    str.tr(',', '.').to_f
  end
end
