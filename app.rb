class RedmartSinatraApp < Sinatra::Base
  # ignore the static pages
  get '/' do
    erb "<h2>Welcome to redmart</h2>"
  end

  # RESTFUL RESOURCES, CREATE READ UPDATE DELETE

  get '/users' do
    @users = User.all
    erb :'users/index'
  end

  get '/users/new' do
    erb :'users/new'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end

  post '/users' do

  end

  put '/users/:id' do

  end

  delete '/users/:id' do

  end
end
