class RenameTable < ActiveRecord::Migration
  def change
    rename_table :poststags, :posttags
  end
end
