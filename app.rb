require 'sinatra'

get /\/.*/ do
  app_name = ENV['APP_NAME'] || 'Unknown'
  namespace = File.read '/var/run/secrets/kubernetes.io/serviceaccount/namespace' rescue 'Unknown'
  "My namespace is #{namespace} and my name is #{app_name}."
end
