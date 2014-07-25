require 'sinatra' #archivo del servidor
require 'sqlite3' #sqlite(database) para el ejericio parking lot
require 'time' 
#importo archivo string.rb para el segment display
#importo archivo car.rb para el parking lot
load 'string.rb'
load 'car.rb'
#coloca los enlaces para los ejercicios
get '/' do  
  '<a href="/calculator">Calculator</a><br>
  <a href="/segment">Segment Display</a><br>
  <a href="/parking">Parking Lot</a>'
end
#formulario de la calculadora
get '/calculator' do
  erb :calculator
end
#formulario que se introducen los datos y se realiza la segmentacion
get '/segment' do
  erb :segment
end
#listando y sacando los carros
get '/parking' do
  erb :parking
end
#listando y sacando los carros
get '/parking/' do
  redirect '/parking'
end
#nuevo carro
get '/parking/new' do
  erb :parking_new
end

######### calculator ##########################
# realiza la operacion traida
post '/calculator/operar' do
  "<h3>#{eval(params[:operation])}</h3>"
end

#calculo la raiz de un numero x
post '/calculator/raiz' do
  "<h3>#{Math.sqrt(eval(params[:operation]))}</h3>"
end

#calculo operacion factorial del un numero x
post '/calculator/factorial' do
  res1 = 1
  1.upto(eval(params[:operation])){ |x| res1 *= x }
  "<h3>#{res1}</h3>"
end

#calcula el numero x en base n
post '/calculator/base' do
  "<h3>#{(eval(params[:operation]) ** params[:n].to_i)}</h3>"
end
######### segment display #####################
#mustra el segmento
post '/segment' do
  "<p>#{params[:num].displayer}</p>" #String.[displyer] clase definida en string.rb
end
######### Parking lot #####################
#guarda la placa del carro
post '/parking/new/save' do
  cars = Cars.new #instancio la la clase Cars en el archivo car.rb
  placa = params[:plate]
  if placa.verify_plate #verifico que la placa sea correcta. Funcion definida en car.rb
    cars.new_car(placa) #guarda la placa del carro
    redirect '/parking' #redirecciona a la lista
  else
    "No es una placa valida para un auto" #en case de que la placa no sea valida
  end
end

#recibe la placa del auto al que se va a hacer el checkout
get '/parking/*/eliminar' do
  cars2 = Cars.new
  cars2.check_out_car(params[:splat].join('').to_s) #le hago checkout (elimino de la bd) al carro
  redirect '/parking'
end