require 'sinatra'
require 'byebug'
require 'shotgun'

get '/' do
	@title = "Comparamos numeros"
		erb :comparar
end

post '/comparar' do
	valor1 = params['@valor_a'].to_i
	valor2 = params['@valor_b'].to_i
			@resultado = (valor1 * valor2) if valor1 == valor2
			@resultado = (valor1 - valor2) if valor1 > valor2
			@resultado = (valor1 + valor2) if valor1 < valor2
	@title = "Resultado"
  erb :resultado
end