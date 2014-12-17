require 'sinatra'
require './fizz_buzz_machine'
require './roman_to_nb_machine'
#require 'sinatra-reloader'

set :public_folder, 'public'

get '/' do
  @name = "Simplon"
  erb :index
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
  @result = roman_to_number(roman)
  erb :roman_to_nb
end

get '/about' do
  erb :about
end
