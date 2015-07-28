class SearchController < ApplicationController
  def search
    @post = Post.most_recent_posts.first
    @title = "Search"
    @other_posts = Post.most_recent_posts.reject { |post| post == @post }
    @posts = Post.all
  end
end
