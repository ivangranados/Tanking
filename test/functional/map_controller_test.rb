require 'test_helper'

class MapControllerTest < ActionController::TestCase
  test "should get gmaps" do
    get :gmaps
    assert_response :success
  end

end
