class MessageSender
  def self.send_code(phone, code)
    account_sid = ENV['twilio_account_sid']
    auth_token = ENV['twilio_auth_token']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    message = client.messages.create(
      from: ENV['twilio_phone'],
      to: phone,
      body: code
    )

    message.status == 'queued'
  end
end
