class RemoveAccountIdFromCustomers < ActiveRecord::Migration[7.1]
  def change
    remove_column :customers, :account_id, :integer
  end
end
