require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    post registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_url
    assert_response :success
  end
end
