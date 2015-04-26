# ***** GEMS *****
require 'bundler/setup'
Bundler.require

# ***** CONNECTION *****
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'restaurant_pos'
)

# ***** MODELS *****
require './models/party'
require './models/food'
require './models/order'

# ***** CONTROLLERS *****
require './controllers/foods_controller'
require './controllers/party_controller'
require './controllers/welcome_controller'


# ***** ROUTING *****
map('/api/foods') { run FoodsController.new() }
map('/api/parties') { run PartiesController.new() }
map('/api/orders') { run OrdersController.new() }
map('/') { run WelcomeController.new() }
