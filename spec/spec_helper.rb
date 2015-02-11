require 'rack/test'


ENV['RACK_TEST']='test'

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
