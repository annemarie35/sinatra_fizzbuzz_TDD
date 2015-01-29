# #Contains database configuration - Kyle M. Brown
 
# #Sets development database to sqlite
# configure :development do
#  set :database, 'sqlite3:///dev.db'
#  set :show_exceptions, true
# end
 
# #Sets production database to postgreSQL
# configure :production do
#  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')
 
#  ActiveRecord::Base.establish_connection(
#    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
#    :host     => db.host,
#    :username => db.user,
#    :password => db.password,
#    :database => db.path[1..-1],
#    :encoding => 'utf8'
#  )
# end