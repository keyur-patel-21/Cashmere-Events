class AddStripePriceIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :stripe_price_id, :string
  end
end
