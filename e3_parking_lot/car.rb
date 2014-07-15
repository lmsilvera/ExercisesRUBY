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
      puts "───────────cars──────────"
      puts "placa   total"
      ary.each do |row|
        printf "%s  $%s\n", row['placa'], ((Time.now.to_i - Time.parse(row['time'].to_s).to_i) / 60) * 100
      end
      puts "─────────────────────────"
    end
    def check_out_car(plate)
      ary = select_all("cars", "where placa = '#{plate}'", 1)
      ary.each do |row|
        puts "El auto con placa #{plate} paga: $#{((Time.now.to_i - Time.parse(row['time'].to_s).to_i) / 60) * 100}"
      end
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