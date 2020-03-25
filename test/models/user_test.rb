require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @subject = User.new
  end

  test "email should be required" do
    @subject.valid?

    assert_includes(@subject.errors[:email], "can't be blank")
  end

  # test "the truth" do
  #   assert true
  # end
end

# rake test test/models/user_test.rb
