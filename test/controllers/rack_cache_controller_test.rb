require 'test_helper'

class RackCacheControllerTest < ActionController::TestCase
  test "should get cache_this" do
    get :cache_this
    assert_response :success
  end

end
