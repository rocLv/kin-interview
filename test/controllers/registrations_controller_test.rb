require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_registration_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post registrations_url, params: {
        user: {
          username: "new_user"
        }
      }
    end
  end
end
