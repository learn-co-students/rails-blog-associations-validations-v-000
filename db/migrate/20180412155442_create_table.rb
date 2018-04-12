class CreateTable < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :post_tags
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
