require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "should get index" do
    sign_in users(:one)
    get articles_url
    assert_response :success
  end
end
