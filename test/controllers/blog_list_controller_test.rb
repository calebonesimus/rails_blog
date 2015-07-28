require 'test_helper'

class BlogListControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
