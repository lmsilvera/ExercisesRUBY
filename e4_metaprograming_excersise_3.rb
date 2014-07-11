module TestExe3
	def self.method_singelton_test
		animal = 'dog'
		yield animal
		puts animal.speak
	end
end

class Exe3
	TestExe3.method_singelton_test do |animal|
		def animal.speak
			"Dog says Woof!"
		end
	end
	TestExe3.method_singelton_test do |animal|
		class << animal
			def speak
				"Dog says Woof!"
			end
		end
	end
end

animal = "dog"
class << animal
	def speak
		puts "#{self.capitalize} says Woof!"
	end
end
animal.speak