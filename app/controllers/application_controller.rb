class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }
  set :static, true

  get '/' do
    erb :index
  end

  get '/index' do
    erb :index
  end

  get '/model_ones/create_user' do
    erb :'model_ones/create_user'
  end

  post '/create_user' do
    binding.pry
    @user = User.find_or_create_by(params[:user])
    @user_id = @user.id
    @user_name = @user.name
    @calorie = Calorie.create(params[:calories])
    
    erb :'/model_twos/track_calories'
  end

  #
  # post '/track_calories' do
  #   Calorie.create(params[:user][0])
  #   Calorie.create(params[:user][1])
  #   Calorie.create(params[:user][2])
  # end


end
