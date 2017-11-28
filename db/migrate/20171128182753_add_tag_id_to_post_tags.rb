class AddTagIdToPostTags < ActiveRecord::Migration
  def change
    add_column :post_tags, :tag_id, :string
  end
end
