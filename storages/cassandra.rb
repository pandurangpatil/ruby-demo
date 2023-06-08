require 'cassandra'

cluster = Cassandra.cluster(hosts: ['localhost'])
session = cluster.connect('your_keyspace')

session.execute("INSERT INTO your_table (id, column1, column2) VALUES (uuid(), 'value1', 'value2')")

results = session.execute('SELECT * FROM your_table')
results.each do |row|
  puts row
end

session.execute("UPDATE your_table SET column1 = 'new_value' WHERE id = uuid()")

session.execute("DELETE FROM your_table WHERE id = uuid()")

cluster.close
