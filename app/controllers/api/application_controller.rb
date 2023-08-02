class Api::ApplicationController < ApplicationController
  include AuthHelper
  respond_to :json
end
