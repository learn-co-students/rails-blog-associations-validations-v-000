class RemoveUserToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :user, :string
  end
end
