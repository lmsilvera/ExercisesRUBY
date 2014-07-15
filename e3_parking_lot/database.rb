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
    begin
      @@database.execute "INSERT INTO Cars VALUES('#{placa}', '#{Time.now}')"
    rescue SQLite3::Exception => e
      puts "Error: '#{e}'"
    end
  end

  def listing_money
    @@database.results_as_hash = true
        
    ary = @@database.execute "SELECT * FROM Cars LIMIT 5"
    puts "───────────cars──────────"
    puts "placa   total"
    ary.each do |row|
      printf "%s  $%s\n", row['placa'], ((Time.now.to_i - Time.parse(row['time'].to_s).to_i) / 60) * 100
    end
    puts "─────────────────────────"
  end

  def check_out(placa)
    @@database.results_as_hash = true
    ary = @@database.execute "SELECT * FROM Cars WHERE placa='#{placa}'"
    ary.each do |row|
      puts "El auto con placa #{placa} paga: $#{((Time.now.to_i - Time.parse(row['time'].to_s).to_i) / 60) * 100}"
    end
    @@database.execute "delete from cars where placa='#{placa}';"
  end

  def close
    @@database.close
  end
end