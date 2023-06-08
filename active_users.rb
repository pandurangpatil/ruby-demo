require_relative './storages/mongo.rb'

client = $client

users_collection = client[:users]
total_users = users_collection.count_documents({})
puts "Total Users: #{total_users}"

active_users = users_collection.count_documents({ last_activity: { '$gte': Time.now - 7 * 24 * 60 * 60 } })
puts "Active Users (Last 7 Days): #{active_users}"
