class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :posts, :name, :text
  end
end
