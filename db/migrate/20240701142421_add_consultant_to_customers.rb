class AddConsultantToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_reference :customers, :consultant, null: false, foreign_key: true
  end
end
