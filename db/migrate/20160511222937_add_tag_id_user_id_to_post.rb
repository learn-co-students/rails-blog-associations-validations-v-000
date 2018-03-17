class AddTagIdUserIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tag_id, :integer
    add_column :posts, :user_id, :integer
    add_column :posts, :content, :text
  end
end
