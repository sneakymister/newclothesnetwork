class AddZipToRetailer < ActiveRecord::Migration
  def change
    add_column :retailers, :zip, :integer
  end
end
