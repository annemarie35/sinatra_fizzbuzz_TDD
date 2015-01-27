require 'sinatra'
require 'pony'
require './fizz_buzz_machine'
require './roman_to_nb_machine'

configure { set :server, :puma }


set :public_folder, 'public'

get '/' do
  @name = "Simplon"
  erb :index
end

get '/road_map' do
  erb :road_map
end

get '/index' do
  @name = "Simplon"
  erb :index
end

get 'test' do
  erb :test
end

get '/fizzbuzz' do
	erb :fizzbuzz
end

get '/roman_to_nb' do
	erb :roman_to_nb
end

get '/contact' do
  erb :contact
end

get '/garros' do
  erb :garros
end

# post '/garros' do
#    erb :garros
# end

post '/fizzbuzz' do
  chiffre = params[:chiffre].to_i
  @result = fizz_buzz(chiffre)
  erb :fizzbuzz
end

post '/roman_to_nb' do
  roman = params[:roman]
  @result = roman_to_nb(roman)
  erb :roman_to_nb
end

get '/about' do
  erb :about
end

not_found do
  status 404
'not found'
end

post '/contact' do
  Pony.mail(
    :from => params[:name],
    :to => params[:email],
    :subject => params[:objet] #+ "has contacted you via the Website",
    :body => params[:message]
  )
   
end
