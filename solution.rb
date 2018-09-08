require 'sinatra'
#require 'pry'


get '/' do
  @respuesta=request.env["HTTP_PERMISO"]
  
  if @respuesta=="soy-un-token-secreto"
    puts "Si lo logramos!"
  else
    puts "No tiene permisos para ver el contenido"
  end

end

