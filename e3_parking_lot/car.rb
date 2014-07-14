class Cars
    @@list = ""
    def initialize
        if File.exists?("document.txt")

        else
            File.new("document.txt", "w")
        end
    end
    def self.new_car(placa)
        if placa.to_s.length >= 6
            file = File.open("document.txt","w")
            all_cars
            @@list += "#{placa}|#{Time.now}___"
            file.puts(@@list)
            file.close
        end
    end
    def self.all_cars
        File.open("document.txt", "r").each do |line|
            @@list += "#{line}\n"
        end
    end
    def self.check_out(placa)
        
    end
end