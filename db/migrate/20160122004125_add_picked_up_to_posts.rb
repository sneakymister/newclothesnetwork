class AddPickedUpToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :picked_up, :boolean
  end
end
