get '/tag/:tag_name' do
  @current_tag = params[:tag_name]
  @all_entries = Post.includes(:entries => :tag).where("tags.tag = ?", params[:tag_name])

  erb :by_tag

end