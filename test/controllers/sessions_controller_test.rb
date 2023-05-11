require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get sessions" do
    get sessions_sessions_url
    assert_response :success
  end
end
