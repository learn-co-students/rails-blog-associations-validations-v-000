class AddTagTable < ActiveRecord::Migration
  def change
    create_table :tag do |t|
      t.string :name
  end
end
end
