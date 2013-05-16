get '/tag/:tag_name' do
  @all_entries = Post.includes(:entries => :tag).where("tags.tag = ?", params[:tag_name])

  erb :by_tag

end