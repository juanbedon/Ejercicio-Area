require 'sinatra'

get '/' do
  "¿Cuanto mide el lado de tu cuadrado? #{params[:area]}"
  erb :index
end

get '/:area' do
  "El area de tu cuadrado es #{params[:area]}"
end

post '/area/cuadrado' do
  lado = params["area"].to_i
  "El area de tu cuadrado es #{lado*lado}"
end