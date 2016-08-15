Rollbar.configure do |config|
 

  config.access_token = 'POST_SERVER_ITEM_ACCESS_TOKEN'


  if Rails.env.test?
    config.enabled = false
  end

 
  config.environment = ENV['ROLLBAR_ENV'] || Rails.env
end
