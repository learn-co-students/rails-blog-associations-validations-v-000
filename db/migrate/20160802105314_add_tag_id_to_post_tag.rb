class AddTagIdToPostTag < ActiveRecord::Migration
  def change
    add_column :posttag, :tag_id, :integer
  end
end
