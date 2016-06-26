class CreateDnaSamples < ActiveRecord::Migration
  def change
    create_table :dna_samples do |t|
      t.references :sample, index: true, foreign_key: true
      t.string :old_id
      t.date :extraction_date
      t.text :notes

      t.timestamps null: false
    end
  end
end
