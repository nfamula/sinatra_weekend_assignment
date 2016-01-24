# Homepage (Root path)
get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end