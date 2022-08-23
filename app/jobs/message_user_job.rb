class MessageUserJob < ApplicationJob
  queue_as :default

  def perform(user, order)
    # Do something later
    @order = order 

    @order.line_items.data.each do |line_item|
      event = Event.find_by(stripe_event_id: line_item.price.product)
      TwilioClient.new.send_text(user, "Don't forget to attend your #{event.name} event tomorrow on #{event.time.strftime("%l : %M  %p")} at #{event.venue}")
    end
  end
end
