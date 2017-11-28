class RemoveUserIdFromPostTags < ActiveRecord::Migration
  def change
    remove_column :post_tags, :user_id, :string
  end
end
