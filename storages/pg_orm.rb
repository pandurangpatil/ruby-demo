require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'your_username',
  password: 'your_password',
  database: 'your_database'
)

class YourModel < ActiveRecord::Base
  self.table_name = 'your_table'
end

results = ActiveRecord::Base.connection.execute('SELECT * FROM your_table')
results.each do |row|
  puts row
end

YourModel.create(column1: 'value1', column2: 'value2')

YourModel.all.each do |record|
  puts record
end

record = YourModel.find_by(id: 1)
record.column1 = 'new_value'
record.save

YourModel.find_by(id: 1).destroy

ActiveRecord::Base.connection.close
