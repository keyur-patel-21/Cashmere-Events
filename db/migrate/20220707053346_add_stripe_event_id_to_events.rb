class AddStripeEventIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :stripe_event_id, :string
  end
end
