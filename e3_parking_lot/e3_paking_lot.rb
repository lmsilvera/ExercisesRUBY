require 'rubygems'
require 'highline/import'
require 'sqlite3'
require 'time'
load 'car.rb'
def clear
  system('clear')
end
def parking_lot
  clear
  @res = 1
  cars = Cars.new
  while @res.to_i != 0
    @res = ask("Que desea hacer\n1) Registro/Check-in carro\n2) Check-out carro\n3) Listar carros\n0) Salir")
    case @res.to_i
    when 0
      cars.close
      clear
    when 1
      clear
      placa = ask("Escriba la placa del carro a registrar:").to_s
      if placa.verify_plate
        cars.new_car(placa)
      else
        puts "No es una placa valida para un auto"
      end
    when 2
      clear
      cars.check_out_car(ask("Digite la placa sel carro sale"))
    when 3
      clear
      cars.listing_cars
    end
  end
end
#parking_lot

parking_lot