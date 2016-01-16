class FixCompanyName < ActiveRecord::Migration
  def change
  	rename_column :retailers, :store_name, :company_name
  	rename_column :nonprofits, :org_name, :company_name
  end
end