class AddTagAndPostToPostTagsTable < ActiveRecord::Migration
  def change
    add_column :post_tags, :post, :content
    add_column :post_tags, :tag, :string
  end
end
