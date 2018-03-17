class AddContentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :context, :text
  end
end
