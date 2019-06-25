class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :title
      t.integer :value
      t.references :event
      t.string :ticketImg

      t.timestamps
    end
  end
end
