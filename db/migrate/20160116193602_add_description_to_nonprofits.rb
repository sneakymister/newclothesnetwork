class AddDescriptionToNonprofits < ActiveRecord::Migration
  def change
  	add_column :nonprofits, :description, :string
  end
end
