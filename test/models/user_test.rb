require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "usename shoud presence" do
    assert_raises(ActiveRecord::RecordInvalid) do
      User.create!(password: "123")
    end
  end

  test "username should be unique" do
    assert_raises(ActiveRecord::RecordInvalid) do
      User.create!(username: "kin")
    end
  end

  test "username length should be less than 30" do
    assert_raises(ActiveRecord::RecordInvalid) do
      User.create!(username: "a" * 31, password: "123")
    end
  end

  test "username should not include upcase letters" do
    assert_raises(ActiveRecord::RecordInvalid) do
      User.create!(username: "A")
    end
  end

  test "username should only contain only lower-case letters,
     numbers, periods, and underscores" do
    assert User.create!(username: "hello_12.3")

    user = User.create(username: "hEllo~11zz")
    assert_not user.save
  end
end
