# ressource : https://shiroyasha.github.io/sinatra-app-with-rspec.html
# https://github.com/brynary/rack-test/
# http://www.sinatrarb.com/testing.html

require 'rspec'
require 'rack/test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end 
# ça permet d'utiliser rack/test avec rspec mais 
# où ajoute on ça ? dans le fichier de test ou dans le spec_helper

def mailer
    Sinatra::Application
end
