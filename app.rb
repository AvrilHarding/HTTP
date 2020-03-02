require 'sinatra'

get '/random-cat' do
  @name = ["Chewie", "Han", "Kylo"].sample
  erb(:index)
 end

get '/named-cat' do
  @name = params[:name]
  erb :index
end

get '/' do
  "Hello World"
end

get '/secret' do
  "This is Avril's secret page"
end

set :session_secret, 'super secret'
