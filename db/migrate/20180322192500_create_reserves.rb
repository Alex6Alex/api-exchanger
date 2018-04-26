class CreateReserves < ActiveRecord::Migration[5.1]
  def change
    create_table :reserves do |t|
      t.belongs_to :currency, index: true
      t.float      :currency_reserve
      t.timestamps
    end
  end
end
