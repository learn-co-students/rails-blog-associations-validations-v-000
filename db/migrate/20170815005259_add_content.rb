class AddContent < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.text :content
      t.integer :user_id
    end
  end
end
