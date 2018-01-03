class AddContentToPost < ActiveRecord::Migration
  def change
    add_column :posts, :change_post, :string
    add_column :posts, :content, :text
  end
end
