class PostTag < ActiveRecord::Migration
  def change
    create_table :post_tags do |f|
      f.integer :post_id
      f.integer :tag_id
  end
 end
end
