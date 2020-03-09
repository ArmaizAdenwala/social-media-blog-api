require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should test controller" do
      get "/v1/users/test"
    assert_equal 401, status
  end
end
