class TwilioClient
  attr_reader :client

  def initialize
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_text(user, message)
    client.api.account.messages.create(
      to: user.phone_number,
      from: phone_number,
      body: message
    )
  end

  private
    def account_sid
      "ACb10fcde0e201ac8cfb2444ddf46986d7"
    end

    def auth_token
      "7e6af82a3a02828dfc2a6c8d485279b1"
    end

    def phone_number
      # "+14095097483"
      "+15005550006"
    end
end