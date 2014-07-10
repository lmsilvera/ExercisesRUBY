ExercisesRUBY
=============

### e1_file_handling.rb

en este archivo está resuelto el ejercicio:
```
Given the Fibonacci sequence write a program that:

Receives two numbers one is the starting position of the fibonacci sequence and the other is the number of items to generate.

The program Will generate a file for each of the numbers of the fibonacci sequence, the name of the file will be the number and a txt extension.

Inside that file the program must put if the number is prime. If the number is not prime it will have to put the list of numbers which the number is divisible by.
```
>Run this exercise, paste this code in your terminal `ruby e1_file_handling.rb`

### e2_metaprograming_excersise_1.rb

resolvemos este ejercicio:

  Could you get the values from outside the class A ?
```
  class A
    def initialize
      @a = 11
      @@a = 22
      a = 33
    end
    @a = 1
    @@a = 2
    a = 3
  end
```
  Write your code which outputs like this:
```
  1
  2
  3
  11
  22
  33
```
>Run this exercise, paste this code in your terminal `ruby e2_metaprograming_excersise_1.rb`

### e3_metaprograming_excersise_2.rb

In this file is resolved next exercise:

Add your code to display 'I like metaprogramming.'
```
  class I
    def like arg
      puts "%s %s %s" % [self.class, self.class.instance_methods(false), arg]
    end
  end

  c, m, arg = gets.split  # input 'I like metaprogramming.'

  # write your code here to display 'I like metaprogramming.'
```
Hints: const_get, send
>Run this exercise, paste this code in your terminal `ruby e3_metaprograming_excersise_2.rb`
