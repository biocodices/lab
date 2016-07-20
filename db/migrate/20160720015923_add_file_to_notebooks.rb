class AddFileToNotebooks < ActiveRecord::Migration
  def change
    add_column :notebooks, :file, :string
  end
end
