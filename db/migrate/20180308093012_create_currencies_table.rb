class CreateCurrenciesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.timestamps

      t.index :name
      t.index :code
    end
  end
end
