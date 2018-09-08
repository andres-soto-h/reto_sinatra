require 'sinatra'
#require 'pry'


get '/' do
  erb :index
end

post '/' do
  @res = params[:respuesta]
  #binding.pry
  if @res==@res.upcase
    @respuesta="Ahhh si, manzanas!"
    erb :respuesta    
  else
    @respuesta="Habla más duro mijito"
    erb :respuesta
  end

end
