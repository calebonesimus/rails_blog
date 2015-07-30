module PostsHelper

  def authors_to_select
    Author.all.collect { |author| [author.name, author.id] }
  end

end
