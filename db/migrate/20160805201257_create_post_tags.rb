class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.integer :tag
      t.integer :post

      t.timestamps null: false
    end
  end
end
