ENV=['RACK_TEST']='test'

# require File.join(File.dirname(__FILE__), '..', 'index.rb')

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
