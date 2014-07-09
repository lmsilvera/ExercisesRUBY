prueba = class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end

puts "\n"

puts A.instance_variable_get(:@a)
puts A.class_variable_get(:@@a)
puts prueba
b = A.new
puts b.instance_variable_get(:@a)
puts A.class_variable_get(:@@a)
puts A.new.send(:initialize)