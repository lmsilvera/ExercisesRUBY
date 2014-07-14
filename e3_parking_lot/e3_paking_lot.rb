require 'sqlite3'
require 'time'

class Database
  @@database
  def initialize
    begin
      @@database = SQLite3::Database.open "test.db"
      @@database.execute "CREATE TABLE IF NOT EXISTS Cars (placa text PRIMARY KEY, time text)"      
    rescue SQLite3::Exception => e
      puts "Exception occured"
      puts e
    end
  end
  def insert(placa)
    @@database.execute "INSERT INTO Cars VALUES('#{placa}', '#{Time.now}')"
  end
  def listing_money
    # stm = @@database.prepare "SELECT * FROM Cars LIMIT 5" 
    # rs = stm.execute    
    # rs.each do |row|
    #     puts row.join "\s"
    # end
    @@database = SQLite3::Database.open "test.db"
    @@database.results_as_hash = true
        
    ary = @@database.execute "SELECT * FROM Cars LIMIT 5"    
    
    ary.each do |row|
      printf "%s $%s\n", row['placa'], ((Time.now.to_i - Time.parse(row['time'].to_s).to_i) / 60) * 100
    end
  end
  def close
    @@database.close
  end
end

def e3
  @res = 1
  datos = Database.new
  while @res != 0
    puts "Que desea hacer"
    puts "1) Registro/Check-in carro"
    puts "2) Check-out carro"
    puts "0) Salir"
    @res = gets().chomp.to_i
    case @res
    when 1
      puts "Escriba la placa del carro a registrar:"
      datos.insert(gets().chomp)
    when 2
      puts ""
      datos.listing_money
      puts ""
    end
  end
end
e3