class AddEventInGuide < ActiveRecord::Migration[7.0]
  def change
    add_reference :guides, :event
  end
end
