class AddColumnsToPostTags < ActiveRecord::Migration
  def change
  	add_column :post_tags, :tag_id, :integer
  	add_column :post_tags, :post_id, :integer
  end
end
