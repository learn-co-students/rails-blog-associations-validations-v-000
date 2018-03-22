class ChangeBackNameDatatypeToPosts < ActiveRecord::Migration
  def change
    change_column :posts, :name, :string
  end
end
