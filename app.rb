require('sinatra')
require('sinatra/reloader')
require('./lib/r_p_s')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/player_2') do
  @player1 = params.fetch('player1')
  erb(:player_2)
end

get('/result') do
  @player2 = params.fetch('player2')
  @result = @player1.beats?(@player2)
  erb(:result)
end
