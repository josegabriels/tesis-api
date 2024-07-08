class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.integer :reputation
      t.string :medal
      t.integer :completed_sales
      t.string :service
      t.decimal :dispatch_time
      t.integer :cancellations
      t.decimal :delivery_time
      t.integer :mediations
      t.integer :claims
      t.integer :gross_sales
      t.integer :units_sold
      t.decimal :average_price

      t.timestamps
    end
  end
end
