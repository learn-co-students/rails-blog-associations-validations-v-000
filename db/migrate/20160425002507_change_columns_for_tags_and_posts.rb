class ChangeColumnsForTagsAndPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user, :reference
    remove_column :tags, :post_id
  end
end
