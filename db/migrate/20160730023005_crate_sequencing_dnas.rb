class CrateSequencingDnas < ActiveRecord::Migration
  def change
    create_table :sequencing_dnas do |t|
      t.references :sequencing, index: true, foreign_key: true
      t.references :library_dna, index: true, foreign_key: true
      t.string :external_id
    end
  end
end
