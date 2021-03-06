require 'csv'

class QubitQuantification < ActiveRecord::Base
  include AssociableToDnaExtraction

  belongs_to :dna_extraction

  ASSAY_CONCENTRATION_UNIT = 'ng/µL'.freeze
  STOCK_CONCENTRATION_UNIT = 'ng/µL'.freeze

  def self.save_records_from_csv!(csv_filepath)
    table = CSV.read(csv_filepath, encoding: 'iso-8859-1:utf-8', headers: true)

    table.each do |row|
      next if row.map{ |_, value| value }.all?(&:nil?)

      qubit = QubitQuantification.new
      # row['Name'] will contain the sample_id
      qubit.associate_to_dna_extraction! row['Name']
      qubit.assay_type = row['Assay Type']
      qubit.assay_concentration = row['Assay Conc.'].try(:to_i)
      qubit.stock_concentration = row['Stock Conc.'].try(:to_i)
      qubit.sample_vol = row['Sample Vol (µL)'].try(:to_i)
      qubit.dilution_factor = row['Dilution Factor'].try(:to_f)
      qubit.std1_rfu = row['Std 1 RFU']
      qubit.std2_rfu = row['Std 2 RFU']
      qubit.std3_rfu = row['Std 3 RFU']
      qubit.excitation = row['Excitation']
      qubit.green_rfu = row['Green RFU']
      qubit.far_red_rfu = row['Far Red RFU']

      # Transform '5/11/15 10:00' to '15/11/5' for Date.parse to work.
      date = row['Date/Time'].split.first.split('/').reverse.join('/')
      qubit.date = Date.parse date

      qubit.save
    end
  end
end
