class AddBirdIdsToNests < ActiveRecord::Migration
  def change
    add_column :nests, :bird_id, :integer
  end
end
