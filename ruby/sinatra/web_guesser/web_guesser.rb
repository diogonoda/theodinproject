require 'sinatra'
require 'sinatra/reloader'

generated_number = rand(101)

get '/' do
  "The SECRET number is #{generated_number}"
end
