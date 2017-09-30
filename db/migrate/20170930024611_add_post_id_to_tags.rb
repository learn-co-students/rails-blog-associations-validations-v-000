class AddPostIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :post_id, :string
  end
end
