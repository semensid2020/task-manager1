class Web::ApplicationController < ApplicationController
  include AuthHelper
  helper_method :current_user
end
