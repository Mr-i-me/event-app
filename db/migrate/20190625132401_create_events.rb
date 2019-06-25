class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :main_img
      t.integer :tickets
      t.references :user
      t.timestamps
    end
  end
end
