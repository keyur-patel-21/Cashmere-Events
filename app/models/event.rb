class Event < ApplicationRecord

  has_one_attached :poster
  has_one :guide, dependent: :destroy
  accepts_nested_attributes_for :guide

  def to_s
    name
  end

  after_create do
    event = Stripe::Product.create(name: name)
    price = Stripe::Price.create(product: event, unit_amount: ticket_price, currency: "inr")
    update(stripe_event_id: event.id, stripe_price_id: price.id)
  end
end
  