class WelcomeController < Sinatra::Base

  enable  :sessions
  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)


  # ***** Debugging *****
  get '/pry' do
    binding.pry
  end

  # ***** ROUTES *****
  get '/' do
    erb :index
  end

end
