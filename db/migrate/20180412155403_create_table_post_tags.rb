class CreateTablePostTags < ActiveRecord::Migration
  def change
    create_table :table_post_tags do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
