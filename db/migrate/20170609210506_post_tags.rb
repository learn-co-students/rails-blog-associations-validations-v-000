class PostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.integer :user_id
      t.integer :post_id
    end
  end
end
