require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "should get root welcome index" do
    get root_path
    assert_response :success
    
  end

end
