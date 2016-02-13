class RenameColumn < ActiveRecord::Migration 

  def change 
    rename_column :post_tags, :user_id, :tag_id
  end 
end