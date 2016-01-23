class ChangeColumnName < ActiveRecord::Migration
  def change
    change_table :tags do |t|
      t.rename :content, :name
    end
  end
end
