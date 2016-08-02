class RenamePosttag < ActiveRecord::Migration
  def change
    rename_table :posttag, :post_tag
  end
end
