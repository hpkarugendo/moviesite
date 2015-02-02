require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get story" do
    get :story
    assert_response :success
  end

  test "should get top" do
    get :top
    assert_response :success
  end

end
