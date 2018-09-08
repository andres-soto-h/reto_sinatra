require 'sinatra'
#require 'pry'


get '/' do
  @respuesta=request.env["HTTP_PERMISO"]
  
  if @respuesta=="soy-un-token-secreto"
    @texto="Si lo logramos!"
    erb :respuesta    
  else
    @texto="No tiene permisos para ver el contenido"
    erb :respuesta    
  end

end

