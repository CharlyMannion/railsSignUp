require 'test_helper'

class RoleTest < ActiveSupport::TestCase

  def setup
    @subject = Role.new
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name)
  end

  should have_many(:assignments)
  should have_many(:users).through(:assignments)
end
