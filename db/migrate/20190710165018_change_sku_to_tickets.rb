class ChangeSkuToTickets < ActiveRecord::Migration[5.2]
    def self.up
      change_column :tickets, :sku, :string
    end

  def self.down
    change_column :tickets, :sku, :integer
  end
end
