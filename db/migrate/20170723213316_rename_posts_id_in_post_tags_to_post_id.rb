class RenamePostsIdInPostTagsToPostId < ActiveRecord::Migration[5.0]
  def change
    rename_column :post_tags, :posts_id, :post_id
    rename_column :post_tags, :tags_id, :tag_id
  end
end
