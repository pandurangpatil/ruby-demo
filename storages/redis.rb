require 'redis'

redis = Redis.new(host: 'localhost', port: 6379)

redis.set('key', 'value')

value = redis.get('key')
puts value

redis.set('key', 'new_value')

redis.del('key')

redis.quit
