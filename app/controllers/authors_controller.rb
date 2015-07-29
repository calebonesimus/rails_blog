class AuthorsController < ApplicationController

  def author_posts
    @author = Author.find(params[:id])
    @posts = Author.find(params[:id]).posts
  end

  def author_list
    @authors = Author.all
  end

end
