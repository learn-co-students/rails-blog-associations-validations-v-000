class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.integer :post
      t.integer :tag

      t.timestamps null: false
    end
  end
end
