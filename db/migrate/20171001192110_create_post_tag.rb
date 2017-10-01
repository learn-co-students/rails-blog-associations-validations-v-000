class CreatePostTag < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.string :post
      t.string :tag
    end
  end
end
