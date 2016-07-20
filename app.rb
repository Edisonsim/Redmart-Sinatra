class Restful_sinatra < Sinatra::Base

  get '/wdi' do
    erb 'My Restful_sinatra website'
  end

  get '/books' do
    #@books = ['Harry Potter', 'Yakuza moon']
    @books = Book.all
  erb :'books'
  end

  get '/books/:id' do
    erb :'each_book'
  end

end
