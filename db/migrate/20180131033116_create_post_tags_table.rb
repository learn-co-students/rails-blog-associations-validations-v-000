class CreatePostTagsTable < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.integer :user_id
      t.integer :tag_id
    end
  end
end
