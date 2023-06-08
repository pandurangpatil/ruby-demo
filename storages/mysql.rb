require 'mysql2'

client = Mysql2::Client.new(
  host: 'localhost',
  username: 'your_username',
  password: 'your_password',
  database: 'your_database'
)

client.query("INSERT INTO your_table (column1, column2) VALUES ('value1', 'value2')")

results = client.query('SELECT * FROM your_table')
results.each do |row|
  puts row
end

client.query("UPDATE your_table SET column1 = 'new_value' WHERE id = 1")

client.query("DELETE FROM your_table WHERE id = 1")

client.close
