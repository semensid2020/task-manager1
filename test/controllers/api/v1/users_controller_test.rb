require 'test_helper'

class Api::V1::UsersControllerTest < ActionController::TestCase
  test 'should get show' do
    user = create(:user)
    get :show, params: { id: user.id, format: :json }
    assert_response :success
  end

  test 'should get index' do
    get :index, params: { format: :json }
    assert_response :success
  end
end
