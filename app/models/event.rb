class Event < ApplicationRecord
  
  after_update :create_and_assign_new_stripe_price, if: :saved_change_to_ticket_price?
  after_create do
    event = Stripe::Product.create(name: name)
    price = Stripe::Price.create(product: event, unit_amount: ticket_price, currency: "inr")
    update(stripe_event_id: event.id, stripe_price_id: price.id)
  end

  paginates_per 10

  validates :category, presence: true

  has_one_attached :poster
  has_one :guide, dependent: :destroy
  accepts_nested_attributes_for :guide
  
  include PgSearch::Model
  pg_search_scope :search_query, against: [:name, :genre, :artist, :venue, :city], using: {tsearch: {prefix: true}}
  
  def self.text_search(query)
    if query.present?
      search_query(query)
    else
      scoped
    end
  end

  def to_s
    name
  end

  def to_builder
    Jbuilder.new do |event|
      event.price stripe_price_id
      event.quantity 1
    end
  end

  def create_and_assign_new_stripe_price 
    price = Stripe::Price.create(product: self.stripe_event_id, unit_amount: self.ticket_price, currency: "inr")
    update(stripe_price_id: price.id)
  end
end
  