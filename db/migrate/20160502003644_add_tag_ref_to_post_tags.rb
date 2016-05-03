class AddTagRefToPostTags < ActiveRecord::Migration
  def change
    add_reference :post_tags, :tag, index: true
    add_foreign_key :post_tags, :tags
  end
end
