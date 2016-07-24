require 'csv'

class NanodropQuantification < ActiveRecord::Base
  belongs_to :dna_extraction
  include AssociableToDnaExtraction

  CONCENTRATION_UNIT = 'ng/μl'.freeze
  RATIO_260_280_OK_RANGE = 1.8..2.0
  RATIO_260_280_WARN_RANGE = 1.6..1.8

  def self.save_records_from_tsv!(tsv_filepath)
    table = CSV.read(tsv_filepath, col_sep: "\t", encoding: 'iso-8859-1:utf-8',
                                   headers: true)
    table.each do |row|
      next if row.map{ |_, value| value }.all?(&:nil?)

      nanodrop = NanodropQuantification.new
      nanodrop.associate_to_dna_extraction! row['Sample ID']
      nanodrop.concentration = parse_number_string row['Nucleic Acid']
      nanodrop.absorbance_260 = parse_number_string row['A260 (Abs)']
      nanodrop.absorbance_280 = parse_number_string row['A280 (Abs)']
      nanodrop.ratio_260_280 = parse_number_string row['260/280']
      nanodrop.ratio_260_230 = parse_number_string row['260/230']
      nanodrop.factor = row['Factor'].to_i if row['Factor']
      nanodrop.sample_type = row['Sample Type']
      nanodrop.date = Date.parse row['Date and Time']

      nanodrop.save
    end
  end

  private_class_method

  def self.parse_number_string(str)
    str.tr(',', '.').to_f
  end
end
