class CreateNests < ActiveRecord::Migration
  def change
    create_table :nests do |t|
      t.string :location
      t.string :fabrication

      t.timestamps null: false
    end
  end
end
