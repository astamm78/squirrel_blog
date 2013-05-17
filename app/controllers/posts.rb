get '/create' do
  erb :create
end

post '/create' do
  post = Post.create(params[:post])

  params[:tags].split(", ").each do |tag|
    Tag.save_tag( post.id, tag.downcase )
  end

  redirect to '/entries'
end

get '/post/:post_id' do
  @post_to_view = Post.find(params[:post_id])
  erb :post
end

get '/entries' do
  erb :entries
end

get '/edit/:post_id' do
  @post_to_edit = Post.find(params[:post_id])

  erb :edit, :layout => false
end

post '/edit/:post_id' do
  update_post = Post.find(params[:post_id])
  update_post.update_attributes(params[:post])

  update_post.tags = []

  params[:tags].split(", ").each do |tag|
    Tag.save_tag( params[:post_id], tag.downcase )
  end

  redirect to "/post/#{params[:post_id]}"
end

get '/delete/:post_id' do
  Post.delete(params[:post_id])
  redirect to '/entries'
end










