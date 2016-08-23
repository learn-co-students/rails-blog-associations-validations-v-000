class CreatePostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags do |t|
      t.belongs_to :post
      t.belongs_to :tag
      t.timestamps null: false
    end
    add_index :posts, :tag_id
    add_index :tags, :post_id
  end
end
