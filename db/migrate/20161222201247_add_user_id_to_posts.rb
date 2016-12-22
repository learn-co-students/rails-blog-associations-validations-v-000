class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_coulmn :posts, :user_id, :integer
  end
end
