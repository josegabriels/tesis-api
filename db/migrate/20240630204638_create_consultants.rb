class CreateConsultants < ActiveRecord::Migration[7.1]
  def change
    create_table :consultants do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
