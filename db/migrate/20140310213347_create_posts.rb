class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content
<<<<<<< HEAD
       t.integer :user_id
=======

>>>>>>> 5ece51e4ab674d5d36872fa2a900b7f86e76357a

      t.timestamps null: false
    end
  end
end
