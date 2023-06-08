require 'mongo'

client = Mongo::Client.new(['localhost:27017'], database: 'your_database')

collection = client[:your_collection]

document = { column1: 'value1', column2: 'value2' }
collection.insert_one(document)

documents = collection.find
documents.each do |doc|
  puts doc
end

collection.update_one({ _id: your_document_id }, { '$set' => { column1: 'new_value' } })

collection.delete_one({ _id: your_document_id })

client.close
