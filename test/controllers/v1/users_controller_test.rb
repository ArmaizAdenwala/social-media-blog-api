require 'test_helper'

class V1::UsersControllerTest < ActionDispatch::IntegrationTest
  base_url = "/v1/users/"
  # test "should register" do
    # post "/login", params: { username: people(:jamis).username,
    #   password: people(:jamis).password }
  # end

  test "should test controller" do
      get "#{base_url}test"
    assert_equal 401, status
  end
end
