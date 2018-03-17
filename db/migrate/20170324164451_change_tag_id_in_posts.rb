class ChangeTagIdInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :tag_id, :tag_ids
  end
end
