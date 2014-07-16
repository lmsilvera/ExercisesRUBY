require 'rubygems'
require 'highline/import'
load 'code_morse.rb'

def code_morse
  opcion = 1
  while opcion != 0 || opcion != "0"
    opcion = ask("Qué desea hacer:\n1) Texto a morse\n2) De morse a texto (Debe estar separado por un espacio. Si es espacio entre palabras coloque '/')\n0) Salir")
    morse = Code_Morse.new
    case opcion
    when "0"
      break
    when "1"
      puts morse.to_morse(ask("Escriba aqui su texto").to_s)
    when "2"
      puts morse.to_string(ask("Escriba aqui su morse").to_s)
    end
  end
end
code_morse