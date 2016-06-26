class CreateQubitQuantifications < ActiveRecord::Migration
  def change
    create_table :qubit_quantifications do |t|
      t.float :assay_concentration
      t.float :stock_concentration
      t.string :assay_type
      t.float :sample_vol
      t.float :dilution_factor
      t.float :std1_rfu
      t.float :std2_rfu
      t.float :std3_rfu
      t.float :excitation
      t.float :green_rfu
      t.float :far_red_rfu
      t.references :dna_sample, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
