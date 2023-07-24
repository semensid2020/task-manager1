class Web::BoardsController < Web::ApplicationController
  before_action :authenticate_user!

  def show
    render react_component: 'TaskBoard', props: {}
  end
end
