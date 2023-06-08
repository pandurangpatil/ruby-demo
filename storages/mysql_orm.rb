require 'sequel'

# Establish a connection
DB = Sequel.connect(adapter: 'mysql2', host: 'localhost', user: 'your_username', password: 'your_password', database: 'your_database')

class YourModel < Sequel::Model("tablename")
end

YourModel.create(column1: 'value1', column2: 'value2')

YourModel.each do |record|
  puts record
end

record = YourModel[1]
puts record

record = YourModel[1]
record.update(column1: 'new_value')

record = YourModel[1]
record.delete

DB.disconnect
