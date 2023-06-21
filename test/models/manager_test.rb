require 'test_helper'

class ManagerTest < ActiveSupport::TestCase
  test 'create' do
    manager = create(:manager)
    assert manager.persisted?
  end
end
