require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'cannot duplicate user name' do
    original = User.create(name: 'John')
    assert original.save

    result = User.create(name: 'John')
    assert_not result.save
  end
end
