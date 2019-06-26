class CreateBoletos < ActiveRecord::Migration[5.2]
  def change
    create_table :boletos do |t|
      t.integer :sku, null: false
      t.integer :value, null: false 
      t.date :expiration_date, null: false
      t.integer :interest
      t.references :user

      t.timestamps
    end
  end
end
