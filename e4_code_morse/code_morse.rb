class Code_Morse
  def to_morse(value)
    result = ""
    value = value.split('')
    value.each do |x|
      result += "#{letter_to_morse(x)} "
    end
    result
  end

  def to_string(value)
    result = ""
    value = value.split(' ')
    value.each do |x|
      result += "#{morse_to_letter(x)}"
    end
    result.capitalize
  end

  def letter_to_morse(letter)
    result_letter = ""
    case letter.downcase
    when "a"
      result_letter = ".-"
    when "b"
      result_letter = "-..."
    when "c"
      result_letter = "-.-."
    when "d"
      result_letter = "-.."
    when "e"
      result_letter = "."
    when "f"
      result_letter = "..-."
    when "g"
      result_letter = "--."
    when "h"
      result_letter = "...."
    when "i"
      result_letter = ".."
    when "j"
      result_letter = ".---"
    when "k"
      result_letter = "-.-"
    when "l"
      result_letter = letter_to_morse("f").reverse
    when "m"
      result_letter = "--"
    when "n"
      result_letter = letter_to_morse("a").reverse
    when "o"
      result_letter = "---"
    when "p"
      result_letter = ".--."
    when "q"
      result_letter = "--.-"
    when "r"
      result_letter = ".-."
    when "s"
      result_letter = "..."
    when "t"
      result_letter = "-"
    when "u"
      result_letter = letter_to_morse("d").reverse
    when "v"
      result_letter = letter_to_morse("b").reverse
    when "w"
      result_letter = letter_to_morse("g").reverse
    when "x"
      result_letter = "-..-"
    when "y"
      result_letter = letter_to_morse("q").reverse
    when "z"
      result_letter = "--.."
    end
    result_letter
  end

  def morse_to_letter(morse)
    result_morse = ""
    case morse
    when "/"
      result_morse = " "
    when letter_to_morse("a")
      result_morse = "a"
    when letter_to_morse("b")
      result_morse = "b"
    when letter_to_morse("c")
      result_morse = "c"
    when letter_to_morse("d")
      result_morse = "d"
    when letter_to_morse("e")
      result_morse = "e"
    when letter_to_morse("f")
      result_morse = "f"
    when letter_to_morse("g")
      result_morse = "g"
    when letter_to_morse("h")
      result_morse = "h"
    when letter_to_morse("i")
      result_morse = "i"
    when letter_to_morse("j")
      result_morse = "j"
    when letter_to_morse("k")
      result_morse = "k"
    when letter_to_morse("l")
      result_morse = "l"
    when letter_to_morse("m")
      result_morse = "m"
    when letter_to_morse("n")
      result_morse = "n"
    when letter_to_morse("o")
      result_morse = "o"
    when letter_to_morse("p")
      result_morse = "p"
    when letter_to_morse("q")
      result_morse = "q"
    when letter_to_morse("r")
      result_morse = "r"
    when letter_to_morse("s")
      result_morse = "s"
    when letter_to_morse("t")
      result_morse = "t"
    when letter_to_morse("u")
      result_morse = "u"
    when letter_to_morse("v")
      result_morse = "v"
    when letter_to_morse("w")
      result_morse = "w"
    when letter_to_morse("x")
      result_morse = "x"
    when letter_to_morse("y")
      result_morse = "y"
    when letter_to_morse("z")
      result_morse = "z"
    end
    result_morse
  end
end