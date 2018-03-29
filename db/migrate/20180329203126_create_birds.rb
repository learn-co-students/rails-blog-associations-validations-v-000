class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :name
      t.string :species

      t.timestamps null: false
    end
  end
end
