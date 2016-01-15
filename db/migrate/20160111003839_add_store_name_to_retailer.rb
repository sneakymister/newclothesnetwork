class AddStoreNameToRetailer < ActiveRecord::Migration
  def change
    add_column :retailers, :store_name, :string
  end
end
