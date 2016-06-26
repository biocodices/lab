class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :laboratory
      t.text :notes
      t.string :hyp
      t.string :fpu
      t.date :pre_pcr_date
      t.date :pcr_date
      t.string :iap
      t.string :clp
      t.string :lnp
      t.string :sgp
      t.date :post_pcr_date
      t.string :old_id

      t.timestamps null: false
    end
  end
end
