require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get ViewGossip" do
    get gossips_ViewGossip_url
    assert_response :success
  end

end
