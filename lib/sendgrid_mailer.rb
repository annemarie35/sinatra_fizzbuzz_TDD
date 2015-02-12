require 'sendgrid-ruby'

#https://github.com/sendgrid/sendgrid-ruby

# As a hash
client = SendGrid::Client.new(api_user: 'SENDGRID_USERNAME', api_key: 'SENDGRID_PASSWORD')

# Or as a block
client = SendGrid::Client.new do |c|
  c.api_user = 'SENDGRID_USERNAME'
  c.api_key = 'SENDGRID_PASSWORD'
end
