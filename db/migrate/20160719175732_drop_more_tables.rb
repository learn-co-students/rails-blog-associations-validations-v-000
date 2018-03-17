class DropMoreTables < ActiveRecord::Migration
  def change
    drop_table :post_tags
  end
end
