require_relative './storages/redis.rb'

client = $client

if client.exists?('cached_data')
  cached_data = client.get('cached_data')
  puts "Retrieved data from cache: #{cached_data}"
else
  data = fetch_data_from_database

  client.set('cached_data', data)
  puts "Data cached: #{data}"
end
