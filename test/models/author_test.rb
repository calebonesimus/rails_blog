require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  def setup
    @post = Post.new(:title => "Post title",
             :body => "This is the long and boring body for the test post.",
             :summary => "Boring post"
             )
    @second_post = Post.new(:title => "Second Post Title")
    @author = Author.new(:name => "Fake Author",
               :bio => "Not even a real person.")
  end

  test "author must have a name" do
    @author = Author.new()
    assert_not @author.save, "Author saved without a name."
  end

  test "author should have many posts" do
    @author.posts << @post
    assert @author.posts.first == @post
  end

  test "author can have many posts" do
    @author.posts << @post
    @author.posts << @second_post
    assert_equal @author.posts.length, 2
  end

end
