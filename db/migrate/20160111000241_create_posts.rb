class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :season, index: true, foreign_key: true
      t.references :retailer, index: true, foreign_key: true
      t.references :nonprofit, index: true, foreign_key: true
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
