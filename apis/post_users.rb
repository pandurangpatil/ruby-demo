require 'sinatra'
require 'json'

post '/users' do
  name = params[:name]
  email = params[:email]
  phone = params[:phone]

  if name.nil? || email.nil? || phone.nil?
    status 400
    return { error: 'Invalid user data' }.to_json
  end

  puts name
  puts email
  puts phone

  status 201
  { message: 'User registered successfully' }.to_json
end
