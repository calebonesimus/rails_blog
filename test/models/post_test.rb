require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.new(:title => "Post title",
             :body => "This is the long and boring body for the test post.",
             :summary => "Boring post"
             )
    @author = Author.new(:name => "Fake Author",
               :bio => "Not even a real person.")
  end

  test "posts should have an author" do
    @author.posts << @post
    assert_equal @post.author, @author
  end

  test "posts should have titles" do
    @post = Post.new(:summary => "This post has no title.")
    assert_not @post.save, "Post saved without a title."
  end

  test "posts should have bodies" do
    @post = Post.new(:summary => "This post has no body.")
    assert_not @post.save, "Post saved without a body."
  end

end
