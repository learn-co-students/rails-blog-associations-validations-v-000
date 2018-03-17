class AddPostRefToPostTags < ActiveRecord::Migration
  def change
    add_reference :post_tags, :post, index: true
    add_foreign_key :post_tags, :posts
  end
end
