require 'sqlite3'
require 'time'
load 'database.rb'

def clear
  system('clear')
end
def e3
  clear
  @res = 1
  datos = Database.new
  while @res != 0
    puts "Que desea hacer"
    puts "1) Registro/Check-in carro"
    puts "2) Check-out carro"
    puts "3) Listar carros"
    puts "0) Salir"
    @res = gets().chomp.to_i
    case @res
    when 0
      datos.close
      clear
    when 1
      clear
      puts "Escriba la placa del carro a registrar:"
      datos.insert(gets().chomp)
    when 2
      clear
      puts "Digite la placa sel carro sale"
      datos.check_out(gets().chomp)
    when 3
      clear
      datos.listing_money
    end
  end
end
e3