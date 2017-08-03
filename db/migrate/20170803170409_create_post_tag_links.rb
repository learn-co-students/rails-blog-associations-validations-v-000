class CreatePostTagLinks < ActiveRecord::Migration
  def change
    create_table :post_tag_links do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
