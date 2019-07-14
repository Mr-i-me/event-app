class AddCategoryToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :category, :string
  end
end
