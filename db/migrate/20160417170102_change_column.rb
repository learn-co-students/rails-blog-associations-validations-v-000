class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :posts, :content, :string
  end
end
