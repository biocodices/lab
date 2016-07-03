class AddGelPictureToDnaExtractions < ActiveRecord::Migration
  def change
    add_column :dna_extractions, :gel_picture, :string
  end
end
