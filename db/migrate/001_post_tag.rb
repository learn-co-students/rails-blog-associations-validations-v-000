class PostTag < ActiveRecord::Migration 

  def change 
    create_table :post_tag do |t|
      t.integer :post_id
      t.integer :user_id 
    end
  end 

end #ends class