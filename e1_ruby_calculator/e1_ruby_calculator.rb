def ruby_calculator
  puts "Digite numero cada numero que desea operar, seguido la operacion"
  @signo = 1
  @valores = ""
  while @signo != 0
    puts "Digite numero a operar"
    @valores += "#{gets().chomp}"
    puts "Digite numero de la operacion a realizar:"
    puts "1) +"
    puts "2) -"
    puts "3) *"
    puts "4) /"
    puts "5) √x"
    puts "6) x!"
    puts "7) x^n"
    puts "0) calcular/salir"
    @signo = gets().chomp
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
      p "Resultado: #{Math.sqrt(valor_actual)}"
      @signo = 0
    when "6"
      res1 = 1
      1.upto(valor_actual){ |x| res1 *= x }
      p "Resultado: #{res1}"
      @signo = 0
    when "7"
      puts "A que numero desea elevar la expresion"
      n = gets().chomp
      p "Resultado: #{valor_actual ** n.to_i}"
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