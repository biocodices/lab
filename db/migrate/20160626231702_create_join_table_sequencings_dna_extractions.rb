class CreateJoinTableSequencingsDnaExtractions < ActiveRecord::Migration
  def change
    create_table :dna_sequencings do |t|
      t.references :dna_extraction, index: true, foreign_key: true
      t.references :sequencing, index: true, foreign_key: true

      t.string :well
      t.string :i7
      t.string :i5
      t.text :notes
      t.string :external_id
    end
  end
end
