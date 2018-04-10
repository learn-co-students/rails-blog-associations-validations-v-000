class RemovePaymentStatusToTags < ActiveRecord::Migration
  def change
    remove_column :tags, :payment_status, :string
  end
end
