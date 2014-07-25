class Database
  @@database
  def initialize
    begin
      @@database = SQLite3::Database.open "test.db"
      @@database.execute "CREATE TABLE IF NOT EXISTS Cars (placa text PRIMARY KEY, time text)"      
    rescue SQLite3::Exception => e
      puts "Exception Initialize: #{e}"
    end
  end

  def insert(table, plate)
    begin
      @@database.execute "INSERT INTO #{table} VALUES('#{plate}', '#{Time.now}')"
    rescue SQLite3::Exception => e
      puts "Exception insert: '#{e}'"
    end
  end

  def select_all(table, whereClause = "", limit = 5)
    begin
      @@database.results_as_hash = true
      ary = @@database.execute "SELECT * FROM #{table} #{whereClause} LIMIT #{limit}"
    rescue Exception => e
      puts "Exception select_all: #{e}"
    end
  end

  def delete(table, whereClause)    
    @@database.execute "delete from #{table} #{whereClause};"
  end

  def close
    @@database.close
  end
end