require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user if passwords do not match" do
    user = User.new(email: 'john@doe.com', password: 'password', password_confirmation: 'password2')
    assert_not user.save
  end

  test "should save user if passwords match" do
    user = User.new(email: 'john@doe.com', password: 'password', password_confirmation: 'password')
    assert user.save
  end

  test "should not save user if duplicate email" do
    user1 = User.new(email: 'john@doe.com', password: 'password', password_confirmation: 'password')
    user2 = User.new(email: 'john@doe.com', password: 'password', password_confirmation: 'password')
    assert user1.save
    assert user2.save
  end
end
