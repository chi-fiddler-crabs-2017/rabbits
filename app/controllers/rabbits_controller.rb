get '/' do
  redirect '/rabbits'
end

get '/rabbits' do
  @rabbits = Rabbit.order(name: :asc)
  erb :"rabbits/index"
end

get '/rabbits/new' do
  @rabbit = Rabbit.new
  erb :"rabbits/new"
end

get '/rabbits/:id' do
  p params
  @rabbit = Rabbit.find(params[:id])
  erb :"rabbits/show"
end

post '/rabbits' do
  @rabbit = Rabbit.new(params[:rabbit])

  if @rabbit.save
    redirect '/rabbits'
  else
    @errors = @rabbit.errors.full_messages
    erb :"rabbits/new"
  end
end