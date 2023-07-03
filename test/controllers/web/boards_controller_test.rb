require 'test_helper'

class Web::BoardsControllerTest < ActionController::TestCase
  setup do
    user = create(:user)
    sign_in(user)
  end

  test 'should get new' do
    get :show
    assert_response :success
  end
end
