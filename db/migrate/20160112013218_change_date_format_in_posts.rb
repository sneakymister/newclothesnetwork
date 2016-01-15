class ChangeDateFormatInPosts < ActiveRecord::Migration
  def up
  	change_column :posts, :deadline, :date
  end

  def down
  	change_column :posts, :deadline, :datetime
  end
end
