require "test_helper"

class SignupUserTest < ActionDispatch::IntegrationTest

  test "sign up a new user" do
    user = User.create(username: "test", email: "test@example.com",
                        password: "password", admin: true)
    sign_in_as(user)
    assert_response :redirect
  end

end