class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb 'Redmart_sinatra website'
  end

  get '/users' do
    #@books = ['Harry Potter', 'Yakuza moon']
    @users = User.all
  erb :'users'

  end



end
