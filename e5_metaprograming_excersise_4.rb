result = class A
  @@a = 1
  @a = 2
  a = 3
  # Write your code here. Use binding method.
  singleton_class = class << self; self;end
  singleton_class.class_eval do
  	define_method(:get_binding_inside_a) do
  		binding
  	end
  end
  binding
end

p eval('[@@a, @a, a]', A.get_binding_inside_a)   # Replace '*****' to your code
p eval('[@@a, @a, a]', result)
