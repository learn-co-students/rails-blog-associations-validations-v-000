class PostsTags < ActiveRecord::Migration
  def change
    create_table :poststags do |t|
      t.integer :tag_id 
      t.integer :post_id 
    end 
  end
end
