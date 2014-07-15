class Operaciones
  def self.raiz_value(value)
    Math.sqrt(value)
  end
  def self.factorial(value)
    res1 = 1
    1.upto(value){ |x| res1 *= x }
    res1
  end
  def self.base_n(value, n)
    value ** n
  end
end