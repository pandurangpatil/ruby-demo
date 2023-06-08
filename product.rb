require_relative './storages/mysql.rb'

client = $client

results = client.query('SELECT * FROM products')

puts 'Product Inventory:'
results.each do |product|
  puts "#{product['id']}: #{product['name']} - Price: $#{product['price']}"
end

total_value = results.inject(0) { |sum, product| sum + (product['price'] * product['quantity']) }
puts "Total Inventory Value: $#{total_value}"
