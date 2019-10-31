require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Show" do
    get home_Show_url
    assert_response :success
  end

end
