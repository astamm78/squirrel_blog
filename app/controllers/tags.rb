get '/tag/:tag_name' do
  @current_tag = params[:tag_name]
  @all_entries = Tag.find_by_tag(params[:tag_name]).posts

  erb :by_tag

end