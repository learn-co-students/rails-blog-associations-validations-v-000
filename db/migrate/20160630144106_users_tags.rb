class UsersTags < ActiveRecord::Migration
  def change
    create_table :users_tags, :id => false do |t|
      t.integer :user_id
      t.integer :tag_id
    end
  end
end
