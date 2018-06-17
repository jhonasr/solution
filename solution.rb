require 'sinatra'

require "sinatra"

get '/' do
	unless params[:nombre]
		<<-HTML
		<h1>Hola desconocido!</h1>
		HTML
	else
		<<-HTML
		<h1>Hola #{params[:nombre]}!</h1>
		HTML
	end
end

get '/:nombre' do
	"Hola #{params[:nombre]}"
end 

