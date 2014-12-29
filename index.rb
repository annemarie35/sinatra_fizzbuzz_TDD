require 'sinatra'
require './fizz_buzz_machine'
require './roman_to_nb'

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

get '/fizzbuzz' do
	erb :fizzbuzz
end

get '/roman_to_nb' do
	erb :roman_to_nb
end

post '/fizzbuzz' do
  chiffre = params[:chiffre].to_i
  @result = fizz_buzz(chiffre)
  erb :fizzbuzz
end

post '/roman_to_nb' do
  roman = params[:roman].to_i
  @result = roman_to_nb(roman)
  erb :roman_to_nb
end

get '/about' do
  erb :about
end
