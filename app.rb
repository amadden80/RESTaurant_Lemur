# ***** GEMS *****
require 'bundler/setup'
Bundler.require


# ***** ROUTES *****
get '/api' do
  content_type :json
  {message: "RESTaurant :)"}.to_json
end
