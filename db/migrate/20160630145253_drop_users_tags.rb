class DropUsersTags < ActiveRecord::Migration
  def change
    drop_table :users_tags
  end
end
