require 'sinatra'
require 'pry'

get '/' do
  @num = (params[:num] ? params[:num] : 0) 
  erb :index
end

post '/' do
  @num = params[:number].to_i
  @num+=1
  redirect "/?num=#{@num}"
end
