class AddPostToUser < ActiveRecord::Migration
  def change
    add_reference :users, :post, index: true
    add_foreign_key :users, :posts
  end
end
