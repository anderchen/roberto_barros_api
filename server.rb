require 'sinatra'
require 'sinatra/namespace'
require 'roberto_barros'

get '/' do 
  "Welcome to Roberto Barros Quote"
end

namespace '/api/v1' do
  before do
    content_type 'application/json'
  end

  get '/quote' do
    data = { quote: RobertoBarros.quote }
    data.to_json
  end
end