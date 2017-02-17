class RenameSamplesBarcodeToTag < ActiveRecord::Migration
  def change
    rename_column :samples, :barcode, :tag
  end
end
