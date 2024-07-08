class AddNewValuesToAccountStatuses < ActiveRecord::Migration[7.1]
  def change
    add_column :account_statuses, :reputation, :integer
    add_column :account_statuses, :medal, :string
    add_column :account_statuses, :completed_sales, :integer
    add_column :account_statuses, :service, :string
    add_column :account_statuses, :dispatch_time, :decimal
    add_column :account_statuses, :cancellations, :integer
    add_column :account_statuses, :delivery_time, :decimal
    add_column :account_statuses, :mediations, :integer
    add_column :account_statuses, :claims, :integer
    add_column :account_statuses, :gross_sales, :integer
    add_column :account_statuses, :units_sold, :integer
    add_column :account_statuses, :average_price, :decimal
  end
end
