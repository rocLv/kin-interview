require "test_helper"

class SuggestionControllerTest < ActionDispatch::IntegrationTest
  test "should create suggest username" do
    post suggestion_index_url, params: {
        first_name: "John", last_name: "Doe"
      }
    assert_response :success
    assert_match("john_doe", body)
  end
end
