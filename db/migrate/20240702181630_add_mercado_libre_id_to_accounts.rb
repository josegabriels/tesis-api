class AddMercadoLibreIdToAccounts < ActiveRecord::Migration[7.1]
  def change
    add_column :accounts, :mercadolibre_id, :string
  end
end
