source 'https://rubygems.org'

ruby '2.1.3'

gem "rack"
gem "sinatra", git: 'https://github.com/sinatra/sinatra.git'
gem "activesupport"
gem "puma"
gem 'pony'
gem 'rake'
gem 'activerecord'
gem 'sinatra-activerecord'
gem 'sqlite3'

#Tells heroku to use postgreSQL in production/live
group :production do
	#gem 'pg'
	#gem 'dm-postgres-adapter'
	gem 'dm-sqlite-adapter'
	#gem 'data_mapper'
end

group :development do
  # gem "shotgun"
  gem "sinatra-reloader"
end

group :test do
  gem "rspec"
  gem "rack-test"
end
