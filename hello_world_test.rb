ENV['RACK_ENV'] = 'test'

require 'hello_world'
require 'minitest/autorun'
require 'rack/test'
#require_relative 'number_cruncher.rb'

#include Rack::Test::Methods
 
#def app
 # Sinatra::Application
#end