#ENV=['RACK_TEST']='test'

require 'capybara/rspec'
require 'sequel'

require './lib/fizz_buzz_machine'
require './lib/roman_to_nb_machine'
require './lib/garros_machine.rb'
require './index.rb' #pour le post de contact/mailer


# require File.join(File.dirname(__FILE__), '..', 'index.rb')

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
