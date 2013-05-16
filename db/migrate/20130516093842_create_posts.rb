class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |post|
      post.string :title,   :null => false
      post.string :content, :null => false
    end
  end
end
