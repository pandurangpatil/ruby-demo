require_relative './storages/pg.rb'

client = $client

result = client.exec('SELECT COUNT(*) FROM users')
total_users = result[0]['count'].to_i
puts "Total Users: #{total_users}"

result = client.exec("SELECT COUNT(*) FROM users WHERE last_activity >= NOW() - INTERVAL '7 days'")
active_users = result[0]['count'].to_i
puts "Active Users (Last 7 Days): #{active_users}"
