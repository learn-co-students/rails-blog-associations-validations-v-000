class Tag < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :post_id

    end
  end
end
