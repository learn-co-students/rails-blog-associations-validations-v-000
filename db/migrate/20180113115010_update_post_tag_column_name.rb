class UpdatePostTagColumnName < ActiveRecord::Migration
  def change
    rename_column :post_tags, :post_it, :post_id
  end
end
