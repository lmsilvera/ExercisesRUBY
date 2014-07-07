@fibonaccis = {0 => 1, 1 => 1}
def serie_fibonacci(x)
  @fibonaccis[x] ||= serie_fibonacci(x - 1) + serie_fibonacci(x - 2)
end

def num_primo(num)
  bool_primo = true
  raiz_numero = num / 2
  (2..raiz_numero).each { |i| bool_primo = false if (num % i) == 0 }
  bool_primo
end

def fibonacci_sequence_file(cantidad)
  (6...cantidad+6).each do |i|
    h_file = File.new("#{serie_fibonacci(i)}.txt", "w")
    num_fib = serie_fibonacci(i)
    text_file = "#{num_fib}\n\n"
    text_file += num_primo(num_fib) ? "Es primo\n\n" : "No es primo\n\n"
    text_file += "Numero divisibles: \n"
    (1..num_fib).each { |x| text_file += "#{x.to_s}\n" if num_fib % x == 0 }
    h_file.puts(text_file)
    h_file.close
  end
  p "¡Listo!"
end

p "Digite la cantidad de numeros con los que desea hacer el ejercicio"
fibonacci_sequence_file(gets().to_i)