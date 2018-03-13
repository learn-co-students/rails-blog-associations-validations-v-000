class AddDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :content, :text
    add_column :posts, :tag_id, :integer
  end
end
