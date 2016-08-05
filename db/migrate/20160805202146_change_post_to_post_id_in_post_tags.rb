class ChangePostToPostIdInPostTags < ActiveRecord::Migration
  def change
    rename_column :post_tags, :post, :post_id
  end
end
