require 'rubygems'
require 'highline/import'
load 'operaciones.rb'

def ruby_calculator
  puts "Digite numero cada numero que desea operar, seguido la operacion"
  @signo = 1
  @valores = ""
  while @signo != 0
    @valores += ask("Digite numero a operar")    
    @signo = ask("Digite numero de la operacion a realizar:\n1) +\n2) -\n3) *\n4) /\n5) √x\n6) x!\n7) x^n\n0) calcular/salir")
    valor_actual = eval(@valores)
    case @signo
    when "0"
      p "Resultado: #{valor_actual}"
      @signo = 0
    when "1"
      @valores += "+"
    when "2"
      @valores += "-"
    when "3"
      @valores += "*"
    when "4"
      @valores += "/"
    when "5"
      p "Resultado: #{Operaciones.raiz_value(valor_actual)}"
      @signo = 0
    when "6"
      p "Resultado: #{Operaciones.factorial(valor_actual)}"
      @signo = 0
    when "7"
      p "Resultado: #{Operaciones.base_n(valor_actual, ask("A que numero desea elevar la expresion").to_i)}"
      @signo = 0
    else
      cls
      puts "Error el insertar el numero de la operacion que desea realizar"
    end
  end  
end
def cls
  system('clear')
end
ruby_calculator