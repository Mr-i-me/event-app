class CreateBoletos < ActiveRecord::Migration[5.2]
  def change
    create_table :boletos do |t|
      t.integer :sku
      t.integer :value 
      t.date :expiration_date
      t.integer :interest
      t.references :user

      t.timestamps
    end
  end
end
