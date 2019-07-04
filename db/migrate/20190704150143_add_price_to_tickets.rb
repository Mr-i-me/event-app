class AddPriceToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :price, :integer
  end
end
