require 'test_helper'

class CaddiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get caddies_new_url
    assert_response :success
  end

end
