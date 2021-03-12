require "test_helper"

class BanishedFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

   test "Not banished user can get root_path" do
    sign_in users(:two)
    get root_path
    assert_response :success
   end

   test "Banished user should redirect to banished way" do
    sign_in users(:four)
    get root_path
    assert_response :redirect
    follow_redirect!
    assert_response :success
   end
end
