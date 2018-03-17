class RemoveTagIdsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :tag_ids
  end
end
