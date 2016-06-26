class CreateNanodropQuantifications < ActiveRecord::Migration
  def change
    create_table :nanodrop_quantifications do |t|
      t.float :concentration
      t.float :ratio_260_280
      t.float :ratio_260_230
      t.float :absorbance_280
      t.float :absorbance_260
      t.float :factor
      t.references :dna_sample, index: true, foreign_key: true
      t.string :sample_type

      t.timestamps null: false
    end
  end
end
