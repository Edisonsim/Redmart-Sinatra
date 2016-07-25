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

<<<<<<< HEAD
  get '/users/:id' do
    if params[:id] == 'new'
      erb :'users/new'
    else
      @user = User.find(params[:id])
      erb :'users/show'
    end
=======
  get '/users/new' do
    erb :'users/new'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
>>>>>>> 1a030b5174197687577c05b176998c21f5a75891
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end

  post '/users' do
<<<<<<< HEAD
    puts params[:user]
    # this is how we do it in pizza shop
    # Pizza.new(parameters to pass in)
    # Pizza.save

    @new_user = User.new(params[:user])

    if @new_user.save
      # go to all users list
      redirect("/users")
    else
      # throw an error
      erb :"users/new"
    end
  end

  put '/users'

  put '/users/:id' do
    @updated_user = User.find(params[:id])

    if @updated_user.update_attributes( params[:user] )
      redirect("/users")
    end
  end

  delete '/users/:id' do
    @deleted_user = User.find(params[:id])

    if @deleted_user.destroy
      # go to all users list
      redirect("/users")
    else
      # throw an error
      erb :"users/#{ @deleted_user.id }"
    end
=======

  end

  put '/users/:id' do

  end

  delete '/users/:id' do
>>>>>>> 1a030b5174197687577c05b176998c21f5a75891

  end
end
