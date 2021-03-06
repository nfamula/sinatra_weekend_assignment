# Homepage (Root path)
get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

post '/messages' do
  @message = Message.new(
  	title: params[:title],
  	content: params[:content],
  	author: params[:author]
  	)
  if @message.save
  	redirect '/messages'
  else
  	erb :'messages/new'
  end
end

get '/messages/:id' do
  @message = Message.find params[:id]
  erb :'messages/show'	
end