class AddColumnsToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :post_id, :integer
  	add_column :posts, :user_id, :integer
  end
end