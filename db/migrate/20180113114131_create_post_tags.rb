class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.integer :tag_id
      t.integer :post_it

      t.timestamps null: false
    end
  end
end
