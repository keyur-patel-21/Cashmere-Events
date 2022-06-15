class CreateGuides < ActiveRecord::Migration[7.0]
  def change
    create_table :guides do |t|
      t.string :event_type
      t.integer :age
      t.string :language
      t.string :content

      t.timestamps
    end
  end
end
