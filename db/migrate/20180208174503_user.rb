class User < ActiveRecord::Migration
  def change
    drop_table :users
    create_table :users do |t|
      t.string :name
    end
  end
end
