require 'pg'

conn = PG.connect(
  host: 'localhost',
  user: 'your_username',
  password: 'your_password',
  dbname: 'your_database'
)

conn.exec("INSERT INTO your_table (column1, column2) VALUES ('value1', 'value2')")

results = conn.exec('SELECT * FROM your_table')
results.each do |row|
  puts row
end

conn.exec("UPDATE your_table SET column1 = 'new_value' WHERE id = 1")

conn.exec("DELETE FROM your_table WHERE id = 1")

conn.close
