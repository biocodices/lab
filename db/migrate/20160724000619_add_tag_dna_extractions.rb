class AddTagDnaExtractions < ActiveRecord::Migration
  def change
    add_column :dna_extractions, :tag, :string
  end
end
