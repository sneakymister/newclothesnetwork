class AddZipToNonprofits < ActiveRecord::Migration
  def change
    add_column :nonprofits, :zip, :integer
  end
end
