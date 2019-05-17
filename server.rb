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
    { quote: RobertoBarros.quote }.to_json
  end
end