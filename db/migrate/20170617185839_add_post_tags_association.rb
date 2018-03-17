class AddPostTagsAssociation < ActiveRecord::Migration
  def change
    add_column :posts, :post_tag_id, :integer
    add_column :tags, :post_tag_id, :integer
  end
end
