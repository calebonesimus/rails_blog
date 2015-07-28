class BlogListController < ApplicationController
  layout false

  def index
    @most_recent_posts = Post.most_recent_posts
  end
end
