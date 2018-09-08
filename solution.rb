require 'sinatra'
#require 'pry'


get '/' do
  @respuesta=request.env["HTTP_PERMISO"]
  
  if @respuesta=="soy-un-token-secreto"
     "<p>Si lo logramos!</p>"
  else
    status 401
    "<p>Sin Permiso</p>"
  end

end

