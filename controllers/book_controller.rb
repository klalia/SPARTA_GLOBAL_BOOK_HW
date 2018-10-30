class PostController<Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }

configure:development do
  register Sinatra::Reloader
end

  get "/" do
    @title_for_the_page = "Books"
    @books = Book.all
    erb :"books/index"
  end

  get '/new' do
    @book = Book.new
    erb :"books/new"
  end

  get "/:id_from_url" do
    id = params[:id_from_url].to_i
    @book = Book.find id
    erb :"books/show"
  end

  get '/:id/edit' do
    id = params[:id].to_i
    @book = Book.find id
    erb :"books/edit"
  end

  put '/:id' do
    id = params[:id].to_i
    book = Book.find id
    book.title = params[:title]
    book.author = params[:author]
    book.description = params[:description]
    book.save
    redirect '/'
  end

  delete '/:id' do
    id = params[:id].to_i
    Book.destroy id
    redirect '/'
  end

  post '/' do
    book = Book.new
    book.title = params[:title]
    book.author = params[:author]
    book.description = params[:description]
    book.save
    redirect "/"
  end

end
