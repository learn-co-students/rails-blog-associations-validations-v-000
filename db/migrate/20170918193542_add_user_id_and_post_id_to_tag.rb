class AddUserIdAndPostIdToTag < ActiveRecord::Migration
  def change
    add_column :tags, :user_id, :integer
    add_column :tags, :post_id, :integer
  end
end
