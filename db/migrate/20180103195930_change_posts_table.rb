class ChangePostsTable < ActiveRecord::Migration
  def change
  	drop_table :posts do |t|
  		t.string   "name"
	    t.datetime "created_at",  null: false
	    t.datetime "updated_at",  null: false
	    t.string   "change_post"
	    t.text     "content"
	    t.string   "add_column"
	    t.integer  "user_id"
  	end
  end
end
