require('sinatra')
require('sinatra/reloader')
#require('./lib/triangle')
also_reload('lib/**/*.rb')
require('pry')

#route for index
get('/') do
    erb(:index)
  end

#route to answer
get('/answer') do
    side_1 = params.fetch('side_1')
    side_2 = params.fetch('side_2')
    side_3 = params.fetch('side_3')
    
    #instance variables
    @side_1 = params.fetch('side_1')
    @side_2 = params.fetch('side_2')
    @side_3 = params.fetch('side_3')
    erb(:answer)
end
