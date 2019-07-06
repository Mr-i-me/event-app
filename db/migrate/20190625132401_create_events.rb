class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :event_tickets
      t.references :user, foreign_key: true
      t.datetime :begin
      t.datetime :end

      t.timestamps
    end
  end
end
