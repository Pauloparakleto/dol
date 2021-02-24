require "test_helper"

class UserCreateFlowTest < ActionDispatch::IntegrationTest
   test "Should create valid user" do
    get new_user_registration_path
     assert_response :success

     post "/users",
     params: { user: { name: "Louis", email: "louis.camoes@gmail.com", 
                                      password: "ronaldinho3", 
                                      password_confirmation: "ronaldinho3"} }
      assert_response :redirect
      follow_redirect!
      assert_response :success      
   end

   test "Should not create user with invalid email: " do
    get new_user_registration_path
     assert_response :success

     post "/users",
     params: { user: { name: "Louis", email: "louis.camoesgmail.com", 
                                      password: "ronaldinho3", 
                                      password_confirmation: "ronaldinho3"} }
      assert_response :success      
   end

   test "should not create user with invalid email 2" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { name: "Louis", email: "louis.camoesgmail.com", 
                                        password: "ronaldinho3", 
                                        password_confirmation: "ronaldinho3"} }
    end
  
  end
  
end
