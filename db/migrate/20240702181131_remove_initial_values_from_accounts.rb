class RemoveInitialValuesFromAccounts < ActiveRecord::Migration[7.1]
  def change
    remove_column :accounts, :reputation, :integer
    remove_column :accounts, :medal, :string
    remove_column :accounts, :completed_sales, :integer
    remove_column :accounts, :service, :string
    remove_column :accounts, :dispatch_time, :decimal
    remove_column :accounts, :cancellations, :integer
    remove_column :accounts, :delivery_time, :decimal
    remove_column :accounts, :mediations, :integer
    remove_column :accounts, :claims, :integer
    remove_column :accounts, :gross_sales, :integer
    remove_column :accounts, :units_sold, :integer
    remove_column :accounts, :average_price, :decimal
  end
end
