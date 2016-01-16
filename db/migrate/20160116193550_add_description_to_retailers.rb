class AddDescriptionToRetailers < ActiveRecord::Migration
  def change
    add_column :retailers, :description, :string
  end
end
