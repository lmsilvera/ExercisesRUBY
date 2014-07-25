class String
  @@respuesta = ""
  def displayer
    1.upto(3) do |x|
      self.to_s.split('').each do |y|
        graficar(x, y)
      end
      @@respuesta += "<br>"
    end
    @@respuesta
  end

  def graficar(llave, valor)
    case llave
    when 1

      case valor
      when "1"
        @@respuesta += "&nbsp;&nbsp;&nbsp;|"
      when "2"
        @@respuesta += "¯¯¯|"
      when "3"
          @@respuesta += "¯¯¯|"
      when "4"
        @@respuesta += "|&nbsp;&nbsp;&nbsp;|"
      when "5"
        @@respuesta += "|¯¯¯"
      when "6"
        @@respuesta += "|¯¯¯"
      when "7"
        @@respuesta += "¯¯¯|"
      when "8"
        @@respuesta += "|¯¯|"
      when "9"
        @@respuesta += "|¯¯|"
      when "0"
        @@respuesta += "|¯¯|"
      end

    when 2

      case valor
      when "1" || "7"
        @@respuesta += "&nbsp;&nbsp;&nbsp;|"
      when "2"
        @@respuesta += "|¯¯¯"
      when "3"
        @@respuesta += "¯¯¯|"
      when "4"
        @@respuesta += "¯¯¯|"
      when "5"
        @@respuesta += "¯¯¯|"
      when "6"
        @@respuesta += "|¯¯|"
      when "7"
        @@respuesta += "&nbsp;&nbsp;&nbsp;|"
      when "8"
        @@respuesta += "|¯¯|"
      when "9"
        @@respuesta += "¯¯¯|"
      when "0"
        @@respuesta += "|&nbsp;&nbsp;|"
      end

    when 3

      case valor
      when "1"
        @@respuesta += "&nbsp;&nbsp;&nbsp;|"
      when "2"
        @@respuesta += "¯¯¯¯"
      when "3"
        @@respuesta += "¯¯¯¯"
      when "4"
        @@respuesta += "&nbsp;&nbsp;&nbsp;|"
      when "5"
        @@respuesta += "¯¯¯¯"
      when "6"
        @@respuesta += "¯¯¯¯"
      when "7"
        @@respuesta += "&nbsp;&nbsp;&nbsp;|"
      when "8"
        @@respuesta += "¯¯¯¯"
      when "9"
        @@respuesta += "&nbsp;&nbsp;&nbsp;|"
      when "0"
        @@respuesta += "¯¯¯¯"
      end

    end
    @@respuesta += "&nbsp;&nbsp;"
  end
end