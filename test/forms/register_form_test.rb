require 'test_helper'

class RegisterFormTest < ActiveSupport::TestCase
  def setup
    @user = User.new
    @form = RegisterForm.new(@user)
  end

  test "email should be required" do
    @form.validate({})

    assert_includes(@form.errors[:email], "can't be blank")
  end

  test "password should be required" do
    @form.validate({})

    assert_includes(@form.errors[:password], "can't be blank")
  end

  test "email should be a valid email address" do
    @form.validate(email: "invalid")

    assert_includes(@form.errors[:email], "is not an email")
  end

  test "email should be unique" do
    # create user in the database
    create(:user, email: "name@domain.com")

    # pass the same email in to the form
    @form.validate(email: "name@domain.com")

    # assert that the correct error has been set
    assert_includes(@form.errors[:email], "has already been taken")
  end
end

# rails test test/forms/register_form_test.rb
