class CreateJoinTablePostTag < ActiveRecord::Migration
  def change
    create_join_table :posts, :tags, table_name: 'post_tags' do |t|
      # t.index [:post_id, :tag_id]
      # t.index [:tag_id, :post_id]
      t.index :post_id
      t.index :tag_id
    end
  end
end
