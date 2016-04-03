class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.belongs_to :user
      t.text :content
      t.timestamps null: false
    end
  end
end
