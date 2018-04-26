class AddWalletExampleToCurrencies < ActiveRecord::Migration[5.1]
  def change
    add_column :currencies, :wallet_example, :string
  end
end
