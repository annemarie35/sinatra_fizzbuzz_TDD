require 'sinatra'
require './lib/fizz_buzz_machine'
require './lib/roman_to_nb_machine'
require 'rubygems'
require 'sinatra/activerecord'

configure { set :server, :puma }
set :public_folder, 'public'


#RTFM http://www.rubydoc.info/gems/sinatra-activerecord/2.0.4
#https://github.com/janko-m/sinatra-activerecord
#TUTO : http://emily-platzer-makes-things.herokuapp.com/2014/05/05/sinatra-postgres-app.html

class Issue < ActiveRecord::Base
end

post '/new_issue' do
# title = params[:title]
# date = params[:date]
# issue = params[:issue]
  @issue = Issue.new(params[:issue])
    if @issue.save
      redirect "issue/#{@issue.id}"
    else
        erb :road_map
    end
  end

get '/road_map' do
  @issues = Issue.order("created_at DESC")
  redirect "/new_issue" if @issues.empty?
  erb :road_map
end

get '/new_issue' do
  erb :new_issue
end

get "/issue/:id" do
  @issue = Issue.find_by_id(params[:id])
  erb :issue
end

get '/' do
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

get '/contact' do
  erb :contact
end

get '/garros' do
  erb :garros
end

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

# not_found do
#   status 404
# 'not found'
# end
