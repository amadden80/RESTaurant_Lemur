# ***** GEMS *****
require 'bundler/setup'
Bundler.require


# ***** MODELS *****
require './models/party'
require './models/food'
require './models/order'


# ***** ROUTES *****
get '/api' do
  content_type :json
  {message: "RESTaurant :)"}.to_json
end
