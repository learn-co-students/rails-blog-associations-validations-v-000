class ChangeColumnNmae < ActiveRecord::Migration
  def change
    rename_column :post_tags, :tag_id, :tag_id
  end
end
