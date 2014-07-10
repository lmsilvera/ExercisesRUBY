class I
  def like arg
    puts "%s %s %s" % [self.class, self.class.instance_methods(false), arg]
  end
end
c, m, arg = gets.split  # input 'I like metaprogramming.

i = I.new

p "#{i.class} #{I.instance_methods(true).first} #{arg}"