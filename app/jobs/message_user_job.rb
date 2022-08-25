class MessageUserJob < ApplicationJob
  queue_as :default

  def perform(user, event)
    # Do something later
    TwilioClient.new.send_text(user, "Don't forget to attend your #{event.name} event tomorrow on #{event.time.strftime("%l : %M  %p")} at #{event.venue}")
  end
end
