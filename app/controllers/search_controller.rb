class SearchController < ApplicationController
  layout false

  def search
    @post = Post.most_recent_posts
    @title = "Search"
    @posts = Post.all
  end
end
