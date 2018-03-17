class AddColumnToTagsTable < ActiveRecord::Migration
	add_column :tags, :post_id, :integer
end