require 'sinatra'

get /\/.*/ do
  name = ENV['APP_NAME'] || 'Unknown'
  "Hello world! My name is #{name}."
end
