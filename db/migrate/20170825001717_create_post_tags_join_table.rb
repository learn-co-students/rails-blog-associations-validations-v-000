class CreatePostTagsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :posts, :tags, column_options: { null: true } do |t|
      t.index :post_id
      t.index :tag_id
    end
  end
end
