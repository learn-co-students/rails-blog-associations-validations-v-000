class AddAgeToBirds < ActiveRecord::Migration
  def change
    add_column :birds, :age, :string
  end
end
