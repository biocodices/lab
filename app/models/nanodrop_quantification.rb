require 'csv'

class NanodropQuantification < ActiveRecord::Base
  belongs_to :dna_sample

  CONCENTRATION_UNIT = 'ng/μl'.freeze
  RATIO_260_280_OK_RANGE = 1.8..2.0

  def self.save_records_from_tsv!(tsv_filepath)
    table = CSV.read(tsv_filepath, col_sep: "\t", encoding: 'iso-8859-1:utf-8',
                                   headers: true)

    records = []
    table.each do |row|
      nanodrop = NanodropQuantification.new
      nanodrop.absorbance_260 = parse_number_string row['A260 (Abs)']
      nanodrop.absorbance_280 = parse_number_string row['A280 (Abs)']
      nanodrop.ratio_260_280 = parse_number_string row['260/280']
      nanodrop.ratio_260_230 = parse_number_string row['260/230']
      nanodrop.factor = row['Factor'].to_i if row['Factor']
      nanodrop.sample_type = row['Sample Type']

      # Creation date is used
      # nanodrop.date = Date.parse(row['Date and Time'])

      # sample_id = row["Sample ID"]  # old_sample_id?
      # Should I create a new DnaSample to associate with this quantification?
      # Or should I search for the last DNASample of the given SAMPLE_ID?
      # Or a mixed strategy: find (last one) or create?

      # nanodrop.save
      records << nanodrop
    end

    records
  end

  private_class_method

  def self.parse_number_string(str)
    str.tr(',', '.').to_f
  end
end
