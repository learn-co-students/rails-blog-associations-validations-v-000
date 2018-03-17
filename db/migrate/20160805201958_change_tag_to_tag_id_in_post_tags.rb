class ChangeTagToTagIdInPostTags < ActiveRecord::Migration
  def change
    rename_column :post_tags, :tag, :tag_id
  end
end
