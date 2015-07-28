class PostsController < ApplicationController
  def index
    @post = Post.most_recent_posts.first
    @title = @post.title
    @other_posts = Post.most_recent_posts.reject { |post| post == @post }
    @ad = Ad.ad_list.sample
  end

  def show
    @post = Post.find(params[:id])
    @title = @post.title
    @other_posts = Post.most_recent_posts.reject { |post| post == @post }
    @ad = Ad.ad_list.sample
  end

end
