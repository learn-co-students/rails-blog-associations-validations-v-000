class RenameTablePostAndTagToPostTags < ActiveRecord::Migration
  def change
    rename_table :post_and_tag, :post_tags
  end
end
