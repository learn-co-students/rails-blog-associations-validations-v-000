class CreateNewPostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string   "name"
    	t.text     "content"
	    t.integer  "user_id"
	    t.datetime "created_at",  null: false
	    t.datetime "updated_at",  null: false
	
    end
  end
end
