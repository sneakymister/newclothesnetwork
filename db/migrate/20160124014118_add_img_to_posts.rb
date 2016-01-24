class AddImgToPosts < ActiveRecord::Migration
  def self.up
    add_attachment :posts, :img
  end

  def self.down
    remove_attachment :posts, :img
  end
end
