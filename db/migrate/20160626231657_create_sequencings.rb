class CreateSequencings < ActiveRecord::Migration
  def change
    create_table :sequencings do |t|
      t.string :pal
      t.string :dal
      t.date :pre_seq_date
      t.text :pre_seq_notes
      t.string :investigator_name
      t.string :rcb
      t.string :sample_prep_kit
      t.integer :index_reads
      t.string :read_type
      t.integer :cycles_reads_1
      t.integer :cycles_reads_2
      t.date :run_date
      t.text :notes
      t.string :old_id

      t.timestamps null: false
    end
  end
end
