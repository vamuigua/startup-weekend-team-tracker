require('sinatra')
require('sinatra/reloader')
require('./lib/team')
require('./lib/member')
also_reload('lib/**/*.rb')
require('pry')

#route for index
get('/') do
    erb(:index)
  end