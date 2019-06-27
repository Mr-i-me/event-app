class AddSkuToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :sku, :integer
  end
end
