class AboutController < ApplicationController
  layout false

  def index
    @posts = Post.all
  end

end
