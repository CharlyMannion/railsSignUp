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
end

# rails test test/forms/register_form_test.rb
