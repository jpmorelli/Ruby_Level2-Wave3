require 'sinatra'
require 'byebug'
require 'shotgun'
require_relative 'models/contador.rb'

get '/' do
	@title = "Incrementamos/Sumamos"
  erb :incrementar
end

post '/sumar' do
	valor1 = params['@valor_a'].to_i
	valor2 = params['@valor_b'].to_i

	cuenta=Contador.new
	@resultado=cuenta.sumar(valor1,valor2)

	erb :resultado
end

post '/restar' do
	valor1 = params['@valor_a'].to_i
	valor2 = params['@valor_b'].to_i

	cuenta=Contador.new
	@resultado=cuenta.restar(valor1,valor2)

	erb :resultado
end

post '/suma1' do
	valor1 = params['@valor_a'].to_i
	valor2 = params['@valor_b'].to_i

	cuenta=Contador.new
	@resultado=cuenta.suma1(valor1)

	erb :resultado
end

post '/resta1' do
	valor1 = params['@valor_a'].to_i
	valor2 = params['@valor_b'].to_i

	cuenta=Contador.new
	@resultado=cuenta.resta1(valor1)
	
	erb :resultado
end
