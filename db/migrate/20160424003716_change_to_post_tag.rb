class ChangeToPostTag < ActiveRecord::Migration
  def change
    rename_table :posts_tags, :post_tag
  end
end
