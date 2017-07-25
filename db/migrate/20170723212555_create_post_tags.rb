class CreatePostTags < ActiveRecord::Migration[5.0]
  def change
    create_table :post_tags do |t|
      t.references :posts, foreign_key: true
      t.references :tags, foreign_key: true

      t.timestamps
    end
  end
end
