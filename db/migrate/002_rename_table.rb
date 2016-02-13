class RenameTable < ActiveRecord::Migration 

  def change 
    rename_table :post_tag, :post_tags
  end

end #ends class