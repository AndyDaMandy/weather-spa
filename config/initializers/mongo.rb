require 'mongo'
uri = ENV['mongo_cluster']
# Create a new client and connect to the server
client = Mongo::Client.new(uri)
# Send a ping to confirm a successful connection
begin
  admin_client = client.use('admin')
  result = admin_client.database.command(ping: 1)
  puts "Pinged your deployment. You successfully connected to MongoDB!"
rescue Mongo::Error::OperationFailure => ex
  puts ex
ensure
  client.close
end