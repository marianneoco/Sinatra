require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World!!!"
end

get '/secret' do
  "Secret message...!!!"
end

get '/new' do
  "Here is a new message"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
