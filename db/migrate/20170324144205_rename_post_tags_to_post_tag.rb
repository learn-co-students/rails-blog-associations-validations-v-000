class RenamePostTagsToPostTag < ActiveRecord::Migration
  def change
    rename_table :post_tags, :post_tag
  end
end
