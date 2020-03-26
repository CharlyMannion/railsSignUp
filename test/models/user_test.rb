require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @subject = User.new
  end

  # test "email should be required" do
  #   @subject.valid?
  #
  #   assert_includes(@subject.errors[:email], "can't be blank")
  # end

  should validate_presence_of(:email)

  test "email should be a valid email" do
    @subject.email = "invalid"
    @subject.valid?

    assert_includes(@subject.errors[:email], "is not an email")
  end

  test "email should be unique" do
    create(:user, email: "email@domain.com")

    @subject.email = "email@domain.com"
    @subject.valid?

    assert_includes(@subject.errors[:email], "has already been taken")
  end

  test "user should be authenticable" do
    user = create(:user, password: "password")

    assert_not(user.authenticate("qwerty"))

    assert(user.authenticate("password"))
  end

  # test "password should be required" do
  #   @subject.valid?
  #
  #   assert_includes(@subject.errors[:password], "can't be blank")
  # end

  should validate_presence_of(:password)  

  test "should confirm the user" do
    user = create(:user)

    assert_not(user.confirmed?)

    user.confirm!

    assert(user.confirmed?)
  end
end

# rake test test/models/user_test.rb
