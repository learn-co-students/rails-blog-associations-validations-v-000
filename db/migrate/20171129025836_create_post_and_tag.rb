class CreatePostAndTag < ActiveRecord::Migration
  def change
    create_table :post_and_tag do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
