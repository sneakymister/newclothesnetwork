class AddOrgNameToNonprofit < ActiveRecord::Migration
  def change
    add_column :nonprofits, :org_name, :string
  end
end
