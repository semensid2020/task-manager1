require 'test_helper'

class Web::BoardsControllerTest < ActionController::TestCase
  test 'should get new' do
    get :show
    assert_response :success
  end
end
