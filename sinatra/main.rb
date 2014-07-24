require 'sinatra'
load 'string.rb'

get '/' do
  '<a href="/calculator">Calculator</a><br>
  <a href="/segment">Segment Display</a><br>
  <a href="/parking">Parking Lot</a>'
end

get '/calculator' do
  erb :calculator
end

get '/segment' do
  erb :segment
end

get '/parking' do
  erb :parking
end
######### calculator ##########################
post '/calculator/operar' do
  "<h3>#{eval(params[:operation])}</h3>"
end

post '/calculator/raiz' do
  "<h3>#{Math.sqrt(eval(params[:operation]))}</h3>"
end

post '/calculator/factorial' do
  res1 = 1
  1.upto(eval(params[:operation])){ |x| res1 *= x }
  "<h3>#{res1}</h3>"
end

post '/calculator/base' do
  "<h3>#{(eval(params[:operation]) ** params[:n].to_i)}</h3>"
end
######### segment display #####################
post '/segment' do
  "<p>#{params[:num].displayer}</p>"
end
######### Parking lot #####################