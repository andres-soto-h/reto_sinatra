require 'sinatra'
#require 'pry'


get '/' do
  @respuesta=request.env["HTTP_USER_AGENT"]
  erb :respuesta
end


