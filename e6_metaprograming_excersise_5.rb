MaskedString = Class.new(String) do
  #hereda la clase String
  define_method :tr_vowel do
    tr 'aeiou', '*'
  end
  instance_eval do
    def tr_vowel(str)
      str.tr 'aeiou', '*'
    end
  end
end

p MaskedString.tr_vowel "asds"