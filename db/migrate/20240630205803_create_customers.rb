class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :account_id

      t.timestamps
    end
  end
end
