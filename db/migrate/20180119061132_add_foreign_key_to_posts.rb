class AddForeignKeyToPosts < ActiveRecord::Migration
  def change
    add_foreign_key :users, :posts
  end
end
