class CreateJoinTablePostTag < ActiveRecord::Migration
  def change
    create_join_table :posts, :tags do |t|
      # t.references :post
      # t.references :tag
      # t.index [:post_id, :tag_id]
      # t.index [:tag_id, :post_id]
    end
  end
end
