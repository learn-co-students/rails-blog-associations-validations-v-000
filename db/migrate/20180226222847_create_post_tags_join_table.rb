class CreatePostTagsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :post, :tags do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
