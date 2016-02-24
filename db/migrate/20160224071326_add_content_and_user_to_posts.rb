class AddContentAndUserToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :user, index: true
    add_column :posts, :content, :string
  end
end
