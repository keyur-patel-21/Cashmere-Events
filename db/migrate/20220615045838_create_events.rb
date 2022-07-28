class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :genre
      t.string :artist
      t.string :description
      t.string :frequency
      t.string :platform
      t.string :venue
      t.string :city
      t.date :date
      t.time :time
      t.integer :ticket_price

      t.timestamps
    end
  end
end
