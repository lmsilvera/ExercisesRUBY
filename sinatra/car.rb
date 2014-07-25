load 'database.rb'

class Cars < Database
    def new_car(placa)
        insert("cars", placa)
        puts "Carro registrado"
    end
    def method_name
        
    end
    def listing_cars
      ary = select_all("cars", "order by time desc", 10)
    end
    def check_out_car(plate)
      delete("cars", "where placa='#{plate}'")
    end
end

class String
  def verify_plate
    result = false
    if self[0, 3] =~ /[a-z]/ && self[1, 1] =~ /[a-z]/ && self[2, 1] =~ /[a-z]/ && self[3, 1] =~ /[0-9]/ && self[4, 1] =~ /[0-9]/ && self[5, 1] =~ /[0-9]/
      result = true
    end
    result
  end
end