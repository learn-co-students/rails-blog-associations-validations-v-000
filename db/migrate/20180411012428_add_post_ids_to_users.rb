class AddPostIdsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :post_ids, :integer
  end
end
