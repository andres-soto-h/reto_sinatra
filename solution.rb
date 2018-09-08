require 'sinatra'
require 'pry'

get '/' do
  @num=0
  erb :index
end

post '/:number' do
  @num = params[:number].to_i
  @num+=1
  erb :index
end
