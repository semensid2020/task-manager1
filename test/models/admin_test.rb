require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test 'create' do
    admin = create(:admin)
    assert admin.persisted?
  end
end
