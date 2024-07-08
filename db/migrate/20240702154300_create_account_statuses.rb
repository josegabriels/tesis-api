class CreateAccountStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :account_statuses do |t|
      t.date :date
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
