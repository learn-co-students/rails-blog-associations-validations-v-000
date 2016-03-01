class RenamePostsTagsToPostTags < ActiveRecord::Migration
  def up
    rename_table :posts_tags, :post_tags
  end

  def down
    rename_table :post_tags, :posts_tags
  end
end
