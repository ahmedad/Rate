Rollbar.configure do |config|
 

  config.access_token = '33e2514fc4e249a4b222a966f8584de7'


  if Rails.env.test?
    config.enabled = false
  end

 
  config.environment = ENV['ROLLBAR_ENV'] || Rails.env
end
