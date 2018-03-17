class CreateJoinTablePostTag < ActiveRecord::Migration
  def change
    create_join_table :post, :tags
  end
end
