class DropAndAddColumnToPostTags < ActiveRecord::Migration
  def change
    add_column :post_tags, :post_id, :integer
    remove_column :post_tags, :user_id, :integer
  end
end
